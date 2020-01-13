# ObjectDetection

# MobileNet Method  &  VGG16 Method & ResNet Method 

MobileNet model is made with TensorFlow and is available in its library. MobileNet restricts resources with little delay. When making this model, we need to choose the appropriate MobileNet type according to the delay and size size.

![Screenshot (129)](https://user-images.githubusercontent.com/36292743/72286575-43929f00-35fa-11ea-8735-2d82d740a3c0.png)

The above table shows the MobileNet variants. According to these varieties, parameter, accuracy, MAC values are given. According to these values, when designing our own MobileNet, we need to choose the most appropriate one. 

VGG16 model is a convective neural network model. It was one of the most famous models presented in 2014. The missing parts of the previously made AlexNet have been corrected. Used to reduce large core size filters to 3 * 3. The VGG16 uses NVIDIA Titan Black GPUs. 

![Screenshot (130)](https://user-images.githubusercontent.com/36292743/72286716-89e7fe00-35fa-11ea-9a8c-9943d29641ef.png)

The figure above shows a given large-scale input of VGG16 in 3 * 3 segments. The VGG16 model was tested using ImageNet data. The ImageNet dataset has 22,000 separate categories, with a total of more than 15 million data. 

![Screenshot (131)](https://user-images.githubusercontent.com/36292743/72286741-98361a00-35fa-11ea-9e9a-c8455ffd8e22.png)

The results of the training are shown in the table above. When we look at the results, the "error" of the VGG16 is the lowest. This shows that it is better than other models.

ResNet(Residual Networks) is a neural network model. It was produced in 2015. Like VGG16, this model was trained with the ImageNet dataset and was chosen as the best-performing model in 2015. 

![Screenshot (132)](https://user-images.githubusercontent.com/36292743/72286763-a71ccc80-35fa-11ea-804f-3a9a38c2543c.png)

The comparison of 3 different methods according to the table below is shown.

# Code Implementation 

Before starting the code, we edited and reviewed our data. Then we created a csv file of our dataset. 

![Screenshot (85)](https://user-images.githubusercontent.com/36292743/72287159-696c7380-35fb-11ea-973a-916cf0258ec4.png)

The "Section" part refers to the folders in our dataset. The "Number" part shows how many images from which section and  "class_weights" indicates the weight of that folder. After we finished with the data set, we started the code section. We wrote our code in the google Colab environment and used the Python language. Since we used Colab because it was a group project, we took advantage of the ability to share on Google Colab. At the same time, since many libraries are attached here, we did not try to add or create libraries. In the Method section, we determined the most suitable method for our project. However, not every result we think in theory actually gives the right answer. So we ran our application with a few different models and got the best result. We started the code part of our project by uploading the data sets to Colab. We separated the "train" and "test" we loaded and put it into arrays.

![Screenshot (84)](https://user-images.githubusercontent.com/36292743/72287086-480b8780-35fb-11ea-9cd2-57a3d2d2ae39.png)

We used the openCV library to put the images into the array.We need to create a data argument before we train. Here, data increase, repeat operation is performed. This is done with the "Generate" function.

![Screenshot (88)](https://user-images.githubusercontent.com/36292743/72287230-7db07080-35fb-11ea-913b-d9aa308a21e9.png)

The operations in the Generate section are as follows:
- Feature-wise = set the input mean to 0.
- Rotation Range = degree range for random turns

After doing these operations, we can do model creation. I'll run a few models here and show which one works better. The model shown in the sample code below is the "ResNet" model. 

![Screenshot (113)](https://user-images.githubusercontent.com/36292743/72287303-a46ea700-35fb-11ea-8f58-8123b80620cb.png)

We build this model with the help of the model library. We should compile the model after we created.
We can import the csv file using the Numpy library. The output of this result is shown in the picture. After that, we can do "Prediction". First of all we create a random and we generate this random from the People, Old and Child data from csv file. After that, we can do "Prediction". First of all we create a random and we generate this random from the People, Old and Child data from csv file. 

![Screenshot (95)](https://user-images.githubusercontent.com/36292743/72287448-ed266000-35fb-11ea-9210-5c1a568f583a.png)

Then, we create Prediction. In doing so, we use the model library. "model.predict" is a function of the library. Then we make a prediction probability with this resulting Prediction value. We used the numpy library to do this. Immediately afterwards, we keep the index value of the estimated value.

![Screenshot (96)](https://user-images.githubusercontent.com/36292743/72287476-fa434f00-35fb-11ea-9c70-1804cad93c11.png)

Finally, we randomly show several test data. Outputs are as follows. "Actual" is actually what it should be, and "Predict" is the value it predicts. The purpose of this predict is to expect the child to guess if there is a child in the picture, to guess the old if there is an old person, and to predict the people if there is no both. Some pictures have been predicted correctly, others have been 
incorrect. We do not expect 100% accuracy. But maybe there are false predictions from our model. So we'll try other models now.

![Screenshot (97)](https://user-images.githubusercontent.com/36292743/72287505-07f8d480-35fc-11ea-8253-cc90d836b72e.png)


# Experimental Result

The values of epoch (50) and branch_size (32) in this calculation are entered the same. Accordingly, a table was created. According to this table, VGG16 has the best probability of accuracy.

![Screenshot (160)](https://user-images.githubusercontent.com/36292743/72287627-3bd3fa00-35fc-11ea-9400-6923adda9b72.png)

Now the changes in the MobileNet model according to the number of epochs are shown in the table below.

![Screenshot (161)](https://user-images.githubusercontent.com/36292743/72287780-83f31c80-35fc-11ea-88be-1424f9d2f5dc.png)

The variation according to the epoch number for the ResNet model is shown in the table below.

![Screenshot (162)](https://user-images.githubusercontent.com/36292743/72287944-d3d1e380-35fc-11ea-9e6e-f014c1b57402.png)

Now the changes in the VGG16 model according to the number of epochs are shown in the table below.

![Screenshot (163)](https://user-images.githubusercontent.com/36292743/72288011-f82dc000-35fc-11ea-9065-0e02fe4c76ca.png)
![Screenshot (119)](https://user-images.githubusercontent.com/36292743/72288037-07147280-35fd-11ea-97d4-b34c03597026.png)

This graph is a graph that appears when the epoch number is 90. It has declined after a certain number of epochs, so we cannot use such a high number of epochs.

![Screenshot (120)](https://user-images.githubusercontent.com/36292743/72288060-15628e80-35fd-11ea-90bd-8316ca1bf8ca.png)

Again in this graph, the epoch number is likewise 90. It has decreased to a certain number of epochs, but after that the loss value has increased, so this number of epochs is not used.


