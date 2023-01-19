#Import main library
import numpy as np
import sys

#Import Flask modules
from flask import Flask, request, render_template

#Import pickle to save our regression model
import pickle 

#Initialize Flask and set the template folder to "template"
app = Flask(__name__, template_folder = 'template')

#Open our model 
model = pickle.load(open('model.pkl','rb'))

#create our "home" route using the "index.html" page
@app.route('/')
def home():
    return render_template('index.html')

#Set a post method to yield predictions on page
@app.route('/', methods = ['POST'])
def predict():
    
    #obtain all form values and place them in an array
    features = [x for x in request.form.values()]
    #Combine them all into a final numpy array
    final_features = [np.array(features)]
    print(final_features)
    #predict the price given the values inputted by user
    prediction = model.predict(final_features)
    print(type(prediction[0]))

    #Set output to prediction np array converted to int / divide by 1000
    output = np.squeeze(prediction)[()]/1000

    #Return prediction output as render with text displayed
    return render_template('index.html', prediction_text = f"These variables will lead to a median house price of: ${output:,.2f} for this area.")


#Run app
if __name__ == "__main__":
    app.run(debug=True)