# [Project 1: Models for the number of cases with Dengue Hemorrhagic Fever]

## This project, conducted as part of my bachelor's research paper, aimed to achieve the following objectives:
- To examine appropriate models for estimating the prevalence of Dengue Hemorrhagic Fever (DHF) among patients in different regions of Thailand.
- To explore the factors associated with the incidence of Dengue Hemorrhagic Fever (DHF).
- To present the findings using visually engaging and informative graphs.

## **Data Sources:**
*This project is a retrospective descriptive study, conducted through a review of historical data.*
- The dengue cases were obtained from the Disease Control Office (No. 506) of the Department of Disease Control, comprising a total of 140,256 individuals.
- Population data was sourced from the National Statistical Office.
- Geographical information was obtained from the Energy Conservation in the Public Sector project.
- Hospital data was provided by the Ministry of Public Health.
- Average temperature and rainfall data were collected from the Meteorological Department.

## **Study Details:**
- The study population consisted of dengue cases reported in each province of Thailand from January 2017 to June 2020.
- The study period spanned 42 months or 3 years and 6 months, starting from January 2560 to June 2563.
- Variables studied: Province, Region, Year, Month, Average Temperature, Rainfall Amount, Population Size, Area, Number of Hospitals.
- The study investigated the number of cases of Dengue Hemorrhagic Fever in the Central, Eastern, Western, and Southern regions of Thailand, utilizing data from all 52 provinces in the country.

## **Data Cleaning:**
*Data was collected from various sources and compiled in Excel for preparation in SPSS for the subsequent cleaning process.*
- Importing the Data: The secondary data collected from various sources is imported into SPSS.
- Data Inspection: The imported data undergoes a visual inspection to identify any inconsistencies, missing values, or formatting issues.
- Handling Missing Values: Missing values are handled by examining the extent and patterns of missingness. Depending on the situation, they can be deleted, imputed using appropriate methods, or treated as a separate category.
- Dealing with Outliers: Outliers, which are extreme values deviating significantly from the rest of the data, are identified and appropriately addressed. They can be removed, recoded, or analyzed separately.

## **Data Analysis and Statistics Used:**
*The data was processed using the R programming language. The data analysis involved the application of the following statistical techniques:*

### **1. Data Visualization:** 
*Creating informative graphs to illustrate the patterns and relationships of the variables more clearly.*

#### Example :
- **Y-axis: Number of DHF (Cases) and X-axis: Time (Months)** ![pic1](graph_pic/pic1.jpg)

- **Y-axis: Number of DHF (Cases) and X-axis: Time (Months)-Divided by Geographic Region** ![pic2](graph_pic/pic2.jpg) The Spaghetti Plot, depicting the number of dengue fever patients each year categorized by region, reveals a similar pattern across all regions. In each year, the number of patients tends to increase. There is a peak point during the rainy season of each year where the number of patients reaches its highest. Additionally, the data suggests a seasonal cyclicality.

- **Y-axis: Number of DHF (Cases) and X-axis: Average Temperature (°C)** ![pic3](graph_pic/pic3.jpg) The Scatter Plot shows the relationship between dengue fever cases and average temperature. It reveals a concentration of cases within the 28-32 degrees Celsius temperature range. However, caution is warranted due to potential data collection inconsistencies and Thailand's consistently warm climate, which ranges from 28-35 degrees Celsius on average. Therefore, definitive conclusions about data accuracy cannot be drawn from this graph alone.

- **Y-axis: Number of DHF (Cases) and X-axis: Rainfall Amount (Millimeters)** ![pic4](graph_pic/pic4.jpg) 
From the Scatter Plot, which displays the number of patients with dengue fever and the rainfall quantity, it can be observed that the graph line tends to increase and extend horizontally. Generally, a higher number of patients are observed in the range of 0-500 millimeters of rainfall. However, it is still difficult to draw significant conclusions from the data.

- **Y-axis: Number of DHF (Cases) and X-axis: Population Size (Individuals)** ![pic5](graph_pic/pic5.jpg) 
The graph demonstrates a positive correlation between the number of dengue fever patients and the population count. As the population increases in each province, there is a clear trend of the number of patients also increasing.

- **Y-axis: Number of DHF (Cases) and X-axis: Area (Square Kilometers)** ![pic6](graph_pic/pic6.jpg) From the scatter plot graph depicting the number of dengue fever patients and the area size, it can be observed that the graph trend is not very distinct. This is because Bangkok, the capital city, has a relatively small area compared to its population. Additionally, Bangkok's status as the capital leads to a high concentration of people residing there. As a result, the number of patients does not align well with the area size.

- **Y-axis: Number of DHF (Cases) and X-axis: Number of Hospitals (Units)** ![pic7](graph_pic/pic7.jpg) The scatter plot clearly shows a noticeable trend between the number of dengue fever patients and the number of hospitals: as the number of hospitals increases, the number of patients tends to increase as well. However, it may not accurately represent the true trend due to the significantly higher number of hospitals in Bangkok (138) compared to other provinces, where the number of hospitals does not exceed 50. This suggests that the data from Bangkok heavily influences the upward trajectory of the graph.

- **For additional R code, please refer to the following GitHub repository:** [graph_code.R](https://github.com/rungsini/rungsini-portfolio/blob/f83c734c54f87be5800fa53964aefb2d838cc98e/graph_code.R)

### **2. Descriptive Analysis:** 
*Describing the characteristics of the independent variables, which included average temperature, rainfall amount, population size, area size, and the number of hospitals. The dependent variable was the number of cases of dengue hemorrhagic fever.*

| Variables | Min | Max | Mean | S.D. |
| ------ | --- | --- | --- | --- |
| Cases | 0 | 1,709 | 64.22| 139.4 |
| Avg.temp | 19.4 | 33.5 | 27.92| 1.9006 |
| Rainfall | 6 | 1,772.70 | 148.8| 170.3908 |
| Population | 177,338 | 5,686,646 | 957,267| 831,763.20 |
| Area | 543 | 20,494 | 8,209| 4,702.68 |
| No. of Hospital | 6 | 138 | 19.38| 19.0732 |

The table reveals the following characteristics:
-Number of patients: Min = 0, Max = 1,709, Average = 64.22 (right-skewed)
-Average temperature: Min = 19.4°C, Max = 33.5°C, Average = 27.92°C (relatively symmetrical)
-Rainfall amount: Min = 6 mm, Max = 1,772.70 mm, Average = 148.8 mm (right-skewed)
-Population size: Min = 177,338, Max = 5,686,646, Average = 957,267 (right-skewed)
-Area size: Min = 543 sq km, Max = 20,494 sq km, Average = 8,209 sq km (moderately right-skewed)
-Number of hospitals: Min = 6, Max = 138, Average = 19.38 (right-skewed)

### **3. Correlation Analysis:** 
*Employing Spearman's correlation method to examine the relationships between variables.*

| Variables  | Correlation Coefficient | p | 
| ------ | --- | --- | 
| Cases | 1.000 | - |
| Avg.temp | 0.290* | 0.000 | 
| Rainfall | 0.134* | 0.000 | 
| Population | 0.418* | 0.000 | 
| Area | 0.100* | 0.000 | 
| No. of Hospital | 0.382* | 0.000 | 
*The statistical significance level at 0.05.

From Table, which the correlation coefficients for average temperature, rainfall amount, population size, area size, and number of hospitals are 0.290, 0.134, 0.418, 0.100, and 0.382, respectively. All factors have a p-value of 0.000, indicating a significant correlation with the number of dengue hemorrhagic fever cases. Therefore, these factors will be used to develop a suitable model.

### **4. Regression Analysis:** 
*Analyzing the relationships between the average temperature, rainfall amount, population size, area size, number of hospitals, and the number of cases of dengue hemorrhagic fever. **The Generalized Least Squares** method, a commonly used regression technique, was employed to develop a model for predicting the number of dengue hemorrhagic fever cases.*

#### Example : Model for the number of dengue fever patients in the central region.
- **Multiple Linear Regression Model:** Number of DHF (Cases) ~ Year + Month + Average Temperature + Rainfall Amount + Population Size + Area + Number of Hospitals

- **Examine the preliminary assumptions of multiple linear regression:** ![pic1](ที่ม4รูป.png)
From the graph, it can be observed that the residuals do not meet the assumption of randomness and show a pattern. The Normal Q-Q plot indicates that the data is not significantly deviating from normal distribution. Most of the data points used for analysis are not outliers.

- **Examine the intercorrelations among the variables:** 
Upon examining the autocorrelation function (ACF) and partial autocorrelation function (PACF) plots, the following patterns can be observed. ![pic1](dv-2024.png)
From the figure, it is evident that the model has a p = 2 and a q = 2, which can be represented by the following equation

- **Autoregressive Moving Average (ARMA):** ![pic1](สมการ amar.png)
The analysis reveals autocorrelation in the residuals, indicating a lack of independence. Additionally, there are issues of non-constant variance. To address these problems, the data was analyzed using the generalized least squares method. The resulting model is as follows.

- **Generalized Least Squares (GLS):** &radic;Number of DHF (Cases) ~ Year + Month + Average Temperature + Rainfall Amount + Population Size^2^ + Area + Number of Hospitals

- ตรวจสอบความแปรปรวนของ GLS Model : ![pic1](dv-2024.png)
- ตรวจสอบสหสัมพันธ์ในตัวเองของตัวแปรของ GLS Model : ![pic1](dv-2024.png)
- ตารางสปสการถดถอยที่ได้จาก GLS Model ภาคกลาง : ![pic1](dv-2024.png)
- GLS Model ที่ปรับปรุงแล้วในภาคกลาง : รูท จำนวนผู้ป่วยโรคไข้เลือดออก ~ ปี + เดือน + ขนาดพื้นที่ + จำนวนโรงพยาบาล
- ตรวจสอบความแปรปรวนของ GLS Model ที่ปรับปรุงแล้วในภาคกลาง : ![pic1](dv-2024.png)
- ตรวจสอบสหสัมพันธ์ในตัวเองของตัวแปรของ GLS Model ที่ปรับปรุงแล้วในภาคกลาง : ![pic1](dv-2024.png)
- Histogram ของส่วนเหลือในภาคกลาง : ![pic1](dv-2024.png)
- ตารางสปสการถดถอยที่ได้จาก GLS Model ที่ปรับปรุงแล้วในภาคกลาง : ![pic1](dv-2024.png)
- ตัวแบบที่เหมาะสมสำหรับจำนวนผู้ป่วยโรคไข้เลือดออกในภาคกลาง : ![pic1](dv-2024.png)
- ตัวอย่างการใช้ตัวแบบ : ![pic1](dv-2024.png)
