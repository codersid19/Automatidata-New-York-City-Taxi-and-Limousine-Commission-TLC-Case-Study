# Automatidata-New-York-City-Taxi-and-Limousine-Commission-TLC-Case-Study


## Description
Automatidata collaborates with the New York City Taxi and Limousine Commission (TLC) to develop a regression model for estimating taxi fares before rides begin. Leveraging data from over 200,000 licensees and one million daily trips, the project aims to enhance fare estimation accuracy. By predicting fares based on factors like distance, time, and location, the model will improve transparency and user experience for passengers, as well as assist drivers in providing accurate estimates.

## Installation
1. Clone this repository.
2. Download the dataset

## Usage
To run the analysis,
1. Run "Automatidata_Data_Exploration"
2. Run "Automatidata_Data_Exploration_Analysis"
3. Run "Automatidata_Statistical_modelling"
4. Run "Automatidata_Regression_Analysis"
5. Run "Automatidata_Machine_Learning_Analysis"

## Data Sources
The data used in this analysis is sourced from Google datasets. You can download the dataset at [https://drive.google.com/file/d/1Sc8lkt29Nw2SddMhdigSIRxGCs3d2Wlk/view?usp=sharing](https://drive.google.com/drive/folders/1PrrXPkQ91qG3nRuTiBdR1GKR28FvcrBJ?usp=sharing)(link).

## Results
![img1](https://github.com/codersid19/Automatidata-New-York-City-Taxi-and-Limousine-Commission-TLC-Case-Study/assets/67604975/2e1486b4-80c5-4cc0-ac91-53624df5a414)
![img2](https://github.com/codersid19/Automatidata-New-York-City-Taxi-and-Limousine-Commission-TLC-Case-Study/assets/67604975/9fd2e9da-c712-4f71-9ea4-f6108c951483)
![img3](https://github.com/codersid19/Automatidata-New-York-City-Taxi-and-Limousine-Commission-TLC-Case-Study/assets/67604975/bad79082-c614-4eef-9405-2fecf1055d20)


1. The identified unusual values are trips that are a short distance but have high charges associated with them
2. Trips that have a total cost entered, but a total distance of “0.” At this point, our analysis indicates these to be anomalies or outliers that need to be factored into the algorithm or removed completely.
3. Collected sample data from an experiment in which customers are randomly selected and divided into
two groups: a. Customers who are required to pay with a credit card. b. Customers are required to pay with cash. 
4. Computed descriptive statistics to better understand the average total fare amount for each payment method available to the customer.
5. Conducted a two-sample t-test to determine if there is a statistically significant difference in average total fares between customers who use credit cards and customers who use cash.
6. There is a statistically significant difference in the average total fare between customers who use credit cards and customers who use cash. Customers who used credit cards showed a higher total amount compared to cas
7. The model performance is high on both training and test sets, suggesting that the model is not over-biased and that the model is not overfit. The model performed better on the test data.
8. The feature with the greatest effect on fare amount was ride duration, which was not unexpected. The model revealed a mean increase of $7 for each additional minute, however, this is not a reliable benchmark due to high correlation between some features.
9. The resulting algorithm is usable to predict riders who might be generous tippers, with reasonably strong precision, recall, F1, and overall accuracy scores.




## Contributing
Contributions are welcome. Please open an issue to discuss any changes or submit a pull request.



## Acknowledgments
- Special thanks to Google for their Google Advance Data Analytics course.
- Inspired by Data Analysis Applciation.
