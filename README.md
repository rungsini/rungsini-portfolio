# Rungsini's Portfolio

# [Project 1: Models for the number of cases with Dengue Hemorrhagic Fever]

*This project, conducted as part of my bachelor's research paper, aimed to achieve the following* **objectives:**
- To examine appropriate models for estimating the prevalence of Dengue Hemorrhagic Fever (DHF) among patients in different regions of Thailand.
- To explore the factors associated with the incidence of Dengue Hemorrhagic Fever (DHF).
- To present the findings using visually engaging and informative graphs.

**Data Sources:**
*This project is a retrospective descriptive study, conducted through a review of historical data.*
- The dengue cases were obtained from the Disease Control Office (No. 506) of the Department of Disease Control, comprising a total of 140,256 individuals.
- Population data was sourced from the National Statistical Office.
- Geographical information was obtained from the Energy Conservation in the Public Sector project.
- Hospital data was provided by the Ministry of Public Health.
- Average temperature and rainfall data were collected from the Meteorological Department.

**Study Details:**
- The study population consisted of dengue cases reported in each province of Thailand from January 2017 to June 2020.
- The study period spanned 42 months or 3 years and 6 months, starting from January 2560 to June 2563.
- Variables studied: Province, Region, Year, Month, Average Temperature, Rainfall Amount, Population Size, Area, Number of Hospitals.
- The study investigated the number of cases of Dengue Hemorrhagic Fever in the Central, Eastern, Western, and Southern regions of Thailand, utilizing data from all 52 provinces in the country.

**Data Cleaning:**
*Data was collected from various sources and compiled in Excel for preparation in SPSS for the subsequent cleaning process.*
- Importing the Data: The secondary data collected from various sources is imported into SPSS.
- Data Inspection: The imported data undergoes a visual inspection to identify any inconsistencies, missing values, or formatting issues.
- Handling Missing Values: Missing values are handled by examining the extent and patterns of missingness. Depending on the situation, they can be deleted, imputed using appropriate methods, or treated as a separate category.
- Dealing with Outliers: Outliers, which are extreme values deviating significantly from the rest of the data, are identified and appropriately addressed. They can be removed, recoded, or analyzed separately.

![pic1](dv-2024.png)

**Data Analysis and Statistics Used:**
*The data was processed using the R programming language. The data analysis involved the application of the following statistical techniques:*
**1. Data Visualization:** Creating informative graphs to illustrate the patterns and relationships of the variables more clearly.
- y และ เดือน ![pic1](dv-2024.png)
- y และ เดือน โดยแบ่งแกน x ตามภูมิภาค ![pic1](dv-2024.png)
- y และ อุณหภูมิเฉลี่ย ![pic1](dv-2024.png)
- y และ ปริมาณน้ำฝนเฉลี่ย ![pic1](dv-2024.png)
- y และ จำนวนประชากร ![pic1](dv-2024.png)
- y และ ขนาดพื้นที่ ![pic1](dv-2024.png)
- y และ จำนวนโรงพยาบาล ![pic1](dv-2024.png)
- See More R Code : https://github.com/rungsini/rungsini-portfolio/blob/bbcf5b645727af694e51340dc97c6e9d066d8237/graph_code.R

**2. Descriptive Analysis:** Describing the characteristics of the independent variables, which included average temperature, rainfall amount, population size, area size, and the number of hospitals. The dependent variable was the number of cases of dengue hemorrhagic fever.

![pic1](dv-2024.png)

**3. Correlation Analysis:** Employing Spearman's correlation method to examine the relationships between variables.

![pic1](dv-2024.png)

**4. Regression Analysis:** Analyzing the relationships between the average temperature, rainfall amount, population size, area size, number of hospitals, and the number of cases of dengue hemorrhagic fever. **The Generalized Least Squares** method, a commonly used regression technique, was employed to develop a model for predicting the number of dengue hemorrhagic fever cases.

- ตัวอย่าง ตัวแบบสำหรับจำนวนผู้ป่วยโรคไข้เลือดออกของภาคกลาง
- พหุคูณ Model : จำนวนผู้ป่วยโรคไข้เลือดออก ~ ปี + เดือน + อุณหภูมิอากาศเฉลี่ย + ปริมาณน้ำฝน + จำนวนประชากร + ขนาดพื้นที่ + จำนวนโรงพยาบาล
- ตรวจสอบข้อตกลงเบื้องต้น : ![pic1](dv-2024.png)
- ตรวจสอบสหสัมพันธ์ในตัวเองของตัวแปร : ![pic1](dv-2024.png)
- ARMA Model : ![pic1](dv-2024.png)
- GLS Model : รูท จำนวนผู้ป่วยโรคไข้เลือดออก ~ ปี + เดือน + อุณหภูมิอากาศเฉลี่ย + ปริมาณน้ำฝน + จำนวนประชากร^2 + ขนาดพื้นที่ + จำนวนโรงพยาบาล
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
