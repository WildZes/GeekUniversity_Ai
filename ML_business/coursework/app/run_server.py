from keras.models import load_model
import pandas as pd
import os

import flask

from logger import logger 
from time import strftime
from flask_cors import CORS, cross_origin

# initialize our Flask application and the model
app = flask.Flask(__name__)
CORS(app)
model = None

def get_model(model_path):
	# load the pre-trained model
	global model
	with open(model_path, 'rb') as f:
		model = load_model(f)
	print(model)

modelpath = os.environ.get('MODELS_PATH', "/app/models/model.h5")
get_model(modelpath)

@app.route("/", methods=["GET"])
def general():
	return """Welcome to fraudelent prediction process."""

@app.route("/predict", methods=["POST"])
@cross_origin()
def predict():
	# initialize the data dictionary that will be returned from the
	# view
	data = {"success": False}
	dt = strftime("[%Y-%b-%d]")
	# ensure an image was properly uploaded to our endpoint
	if flask.request.method == "POST":
		request_json = flask.request.get_json()

		if request_json["close"]:
			close = request_json['close']

		logger.info(f'{dt} Data: close={close}')

		try:
			preds = model.predict(
				pd.DataFrame({
					"close": [close]
				})
			)

		except AttributeError as e:
			logger.warning(f'{dt} Exception: {str(e)}')
			data['predictions'] = str(e)
			data['success'] = False
			return flask.jsonify(data)

		data["predictions"] = str(preds[0])

		# indicate that the request was a success
		data["success"] = True

	# return the data dictionary as a JSON response
	return flask.jsonify(data)

# if this is the main thread of execution first load the model and
# then start the server
if __name__ == "__main__":
	print(("* Loading the model and Flask starting server..."
		"please wait until server has fully started"))
	port = int(os.environ.get('PORT', 8180))
	app.run(host='0.0.0.0', debug=True, port=port)
