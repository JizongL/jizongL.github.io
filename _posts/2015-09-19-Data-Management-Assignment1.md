---
layout: post
comments: True
title: Assignment 1 Getting Your Research Project Started
category: Data Science
tags: [correlation, data, assignment]
---

### Brief summary and introduction

My name is [Jizong Liang](https://www.linkedin.com/in/jizongliang) and you can call me [TmmGeek](http://jizongl.github.io/), I am a PhD student in Pathology at the cancer research Institute at [University of Mississippi Medical Center](https://www.umc.edu/), In addition, I am also a computer geek and extremely interested in statistical analysis and Data Science. As a result, anything related to diseases and data analysis would be my areas of interests. 

<!--break-->

Recently, I have done indepth study in HIV and AIDS and have developed a thorougly understanding of its pathology and molecular mechanism and I am quite facinated with this devilish disease which is by far one of the most clever viruses known to us. and as a biomedical scientist, I believe that my priority is to focus on bringing better health care to people and conduct innovative research to improve disease treatments, and I believe in the near future, the mystery of HIV and AIDS will be resolved and million of people will have their second chance to relive their life. 

Nevertheless, diseases, especially HIV and AIDS, could also be studied at different angles other than just biomedical research, such as their effects and ramifications woven into all levels of social strata, their influences on human behaviors in different cultures, economic status, how they may influence life expectancy in different countries, how different cultural practices would either promote or discourage them. All these different domains mentioned above along with numerous others, as I am strongly convinced, would provide unexpected additional evidence for scientists, medical professionals, social workers and many other related personnels to work together in order to understand disease epidemiology better and develop more effective personalized treatment plans. 

Here I want to say thank you to [Coursera](https://www.coursera.org/) which provides this amazing course [Data Management and Visualization](https://www.coursera.org/learn/data-visualization) by [Wesleyan University](http://www.wesleyan.edu/). I am motivated by the structure of this course which gives me freedom and a mature guideline to venture into the unknowns of Data Science. The following contents are my effort to complete [the step by step guidelines](https://www.coursera.org/learn/data-visualization/peer/ntBWz/getting-your-research-project-started) to get my project started. 

* This line is a placeholder to generate the table of contents
{:toc}

### 1: Choose a data set that you would like to work with.
After looking through all the datasets available, I have chosen the [Gapminder](https://d396qusza40orc.cloudfront.net/phoenixassets/data-management-visualization/GapMinder%20Codebook%20.pdf) dataset because it is closely related to my areas of interests. The dataset is availble [here](https://raw.githubusercontent.com/JizongL/jizongL.github.io/master/assets/blog/Rblog/correlation/09192015correlation/gapminder.csv). 

### 2: identify a specific topic of interest

After studying briefly on the Gapminder dataset, I found that there is an **HIV** identifier that caught my attention, along with a few others related identifers that I am interested in, such as *life expectancy*, *urban rate*, *Internet user rate* etc.(please see Codebook for further details) 

Intuitively, I would ask the question wheather **HIV Prevalence** might more or less correlate with **urbanization**, at least in the developed countries. Or perhaps there might be different patterns of HIV rate between developed and developing countries. Furthermore, would the patterns be different between the western and eastern worlds? 

Besides, I personally incline to believe that the **Internet** might play a critical role in influencing people's awareness on HIV infection and prevention. Or would the many misleading information people could have access from the web actually contribute to people making less informed decisions about their sexual orientation or behaviors, or rather not? I am excited to experiment on the data deeper as the course proceeds and to extract more insightful evidence to support my hypothesis and I believe that the journey will be fun. 

variables available from the [Gapminder](https://d396qusza40orc.cloudfront.net/phoenixassets/data-management-visualization/GapMinder%20Codebook%20.pdf) dataset for my primary topic are as followed. 

* **HIVrate** 

* **urbanrate**

* **Internetuserate**

### 3: Codebook 

**Note:** This extracted Codebook includes all the variables details for both my primary and secondary topics 


| Variable Name | Description of Indicator | Main Source |
---- | :----:| ----: |
| **incomeperperson** | 2010 Gross Domestic Product per capita in constant 2000 US$. The inflation but not the differences in the cost of living between countries has been taken into account. | World Bank Work Development Indicators |
| **lifeexpectancy** | 2011 life expectancy at birth (years) The average number of years a newborn child would live if current mortality patterns were to stay the same. | **I** Human Mortality Database **II** World Population Prospects **III*** Publications and files by history prof. James C Riley **IV** Human Lifetable Database
| **relectricperperson** | 2008 residential electricity consumption, per person (kWh) The amount of residential electricity consumption per person during the given year, counted in kilowatt-hours (kWh). | International Energy Agency |
| **urbanrate** | 2008 urban population (% of total) Urban population refers to people living in urban areas as defined by national statistical offices (calculated using World Bank population estimates and urban ratios from the United Nations World UrbanizationProspects).| World Bank 
| **Internetuserate** | 2010 Internet users (per 100 people) Internet users are people with access to the worldwide network.| World Bank 
| **HIVrate** | 2009 estimated HIV Prevalence % - (Ages 15-49) Estimated number of people living with HIV per 100 population of age group 15-49.| UNAIDS online database

### 4: Identify a second topic that you would like to explore in terms of its association with your original topic.

After looking at the [Gapminder](https://d396qusza40orc.cloudfront.net/phoenixassets/data-management-visualization/GapMinder%20Codebook%20.pdf) Codebook again, I also think of the possiblity to explore the possible relationship between Socioeconomic status and life expectancy. My question to ask is that does income rate necessarily improve life expectancy in general, or the otherwise? As when people become more fiancially confident, they may or may not take better care of themselves. Of course, I would not jump into any conclusion until I could analytically draw more insight from the data along this course. It should be exciting. 

### 5: Add questions/items/variables documenting this second topic to your personal codebook.

Please see Codebook above.

### 6: Perform a literature review to see what research has been previously done on this topic. 

1: HIV/AIDs and Urbanization

It is well known that levels of HIV prevalence tend to be appreciably higher inurban areas<sup>[1](http://onlinelibrary.wiley.com/doi/10.1111/j.1728-4457.2003.00427.x/abstract)</sup>(*Tim Dyson Et.al*). Once in a city, the newly introduced infection would have the opportunity to spread locally among the population and could also spread further along highways and inter- urban transport routes and by airplane. HIV has been, and in Asia is becoming, the best known beneficiary of this dynamic, but many other diseases, such as dengue, stand to benefit.<sup>[2](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2626828/pdf/8903148.pdf)</sup>(*Stephen S. Morse et.al 1995*)

Netertheless, we must not easily jump into conclusion based on one side of the story. To look deeper, we must ask how should we effectively discern if there is bias in HIV/AIDS surveillance data collection practice both nationally and globally. For instance, Given the absence of recent and regularly updated census data for many countries in sub-Saharan Africa, global statistics on urban- ization on the subcontinent are often speculative and not particularly reliable<sup>[3](http://eau.sagepub.com/content/18/1/155.full.pdf+html)</sup>(MIRJAM VAN DONK et.al,2015). 

In fact, global HIV/AIDS data are continuously adjusted in response to better HIV surveillance systems and improved software to model the HIV/AIDS epidemic.(6) Global HIV/AIDS data also tend to reflect an implicit urban bias, as sentinel surveillance sites are generally located in urban areas and in larger settle- ments in rural districts. For this reason UNAIDS prefers to use the term “outside major urban areas”, rather than “rural areas”. This distinction is again based on country distinctions, which complicates comparisons between countries.<sup>[3](http://eau.sagepub.com/content/18/1/155.full.pdf+html)</sup>(MIRJAM VAN DONK et.al,2015). 

Though the true trace of HIV/AIDs development in both Urban and Rural areas around the world may indeed be too challenge to detect, we may argue that there could be specific factors that make the HIV/AIDs patterns of HIV/AIDs development distinctly different between Urban and Rural. For example, a Cross-sectional survey data were gathered from 995 respondents in northwest Ethiopia. The findings indicated that urban residents’ concern about and information needs on HIV/AIDS was greater than that of the rural populace. Urban and rural residents were also found to be significantly different in their preferences for specific types of HIV/AIDS-related information. While rurality was found to be associated with a preference for basic HIV transmission and prevention information, urbanity was associated with a preference for information on HIV/AIDS-related care and support<sup>[4](http://idv.sagepub.com/content/29/4/323.full.pdf+html?cited-by=yes&legid=spidv;29/4/323#cited-by)</sup>(Mesfin Awoke Bekalu,2013)

In 1990, James W.Curran and colleagues mentioned that there are three major epidemiological patterns of HIV infection have been previously described in the world. In pattern I, which occurs mainly in North America, Europe, and Australia, most cases occur in homosexual men and injecting drug users and their sex partners and offspring. Pattern II occurs mainly in sub-Saharan Africa, and increasingly in other parts of the world. Here most people acquire their infection heterosexually, perinatally from their mother, or through blood transfusion. Finally, pattern III includes the remaining countries where HIV was very recently introduced and where small numbers of cases have been infected in various ways.<sup>[6](http://journals.lwwcom/jaids/Citation/1990/04000/The_Global_Epidemiology_of_HIV_Infection_.16.aspx)</sup>(Barney Cohen,2005)

These findings again suggest the different patterns of HIV/AIDs development between Urban and Rural areas, moreover, the course of HIV/AIDs epidemic may have been further complicated by other factor such as the internet. It may influence people's sexual behaviors and in term indirectly contribute to the development of HIV/AIDs. For example, Mary McFarlane and colleagues found that Young adults who seek sex on the Internet report substantially different sexual behavior patterns than young adults who do not seek sex on the Internet. Young adults with online partners reported sexual behaviors similar to older respondents who used the Internet to find sex partners; however, older respondents were more likely than young adults to have been tested for sexually transmitted diseases and HIV.<sup>[7](http://www.sciencedirect.com/science/article/pii/S1054139X02003737)</sup>(Mary McFarlane et.al, 2002)

The internet may also play a critial role in HIV/AIDs prevention and disease management for patients. Unfortunately, health information is not equally accessible, with less educated, economically disadvantaged, and socially marginalized persons least likely to access health information on the Internet (Bolt & Crawford, 2000), and the same demographic characteristics represent the fastest growing populations of people living with HIV/AIDS. In a previous study, we found that 49% of HIV-positive men and women had used the Internet and that 29% were currently using the Internet to access health information (Kalichman, Benotsch, Weinhardt, Austin, & Luke, 2002). We also found evidence of a digital divide in people with HIV/AIDS,with a history of Internet use more common among Whites (77%) than African Americans (42%). A gap therefore exists between persons who do and do not have access to the Internet, with the growing population of people living with HIV/AIDS being among those least likely to access information online.<sup>[8](http://www.ncbi.nlm.nih.gov/pubmed/?term=Health-related+Internet+use%2C+coping%2C+social+support%2C+and+health+indicators+in+people+living+with+HIV%2FAIDS%3A+preliminary+results+from+a+community+survey.+Health+Psychol.+2003%3B22(1)%3A111-6.)</sup>(Kalichman SC & Benotsch EG,2003)

The same study also found that Internet use for health-related information was associated with health-related outcomes. Persons who used the Internet for health information were better informed about HIV disease and reported more use of active coping strategies and greater social support. We found that health-related Internet use was associated with information-seeking coping, a result that is consistent with research showing that information seeking as a coping style is associated with health benefits among some people with chronic medical conditions (Devins & Binik, 1996). These results support the use of interventions that increase active coping strategies, and we suggest including use of the Internet for health- related purposes among active coping strategies. It is likely that persons who seek information on the Internet are actively seeking health information through multiple other information sources as well. However, our cross-sectional study design precludes drawing causal interpretations of the observed associations. Thus, prospec- tive and experimental studies are needed to determine the direction of associations between Internet use, coping strategies, and health outcomes.<sup>[8](http://www.ncbi.nlm.nih.gov/pubmed/?term=Health-related+Internet+use%2C+coping%2C+social+support%2C+and+health+indicators+in+people+living+with+HIV%2FAIDS%3A+preliminary+results+from+a+community+survey.+Health+Psychol.+2003%3B22(1)%3A111-6.)</sup>(Kalichman SC & Benotsch EG,2003)

Based on those studies mentioned above, there are still many potential correlations among the 3 identifiers, HIV/AIDs development rate, Urbanization, and Internet use yet to be discovered, therefore, it is worth looking further into these relationships. 

2: Income levels and life expectancy 

estimates of life expectancy according to education have been reported by Kitagawa and Hauser for white men and white women in the United States.<sup>[13](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1403677/pdf/pubhealthrep00072-0091.pdf)</sup>(Rogot E & Sorlie PD,1992) In the same study, Rogot E and colleagues found that Differences in lifeexpectancy at age 25 between the highest and the lowest levels of education completed were about 6 years for white men and aboutSyearsforwhitewomen. Forfamilyincome, differences between the highest and the lowest income groups were about 10 years for white men and4.3yearsforwhitewomen. Thelargestdifer- ences in lifeexpectancy were between employment categories. At age 25, white men in the laborforce lived on average about 12 more years than those notinthelaborforce,andwhitewomen livedon average about 9 more years. For those who were unable to work compared with those in the labor force,thedifferenceforwhitemen wasabout20 years;forwhitewomen, 29 years. <sup>[13](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1403677/pdf/pubhealthrep00072-0091.pdf)</sup>(Rogot E & Sorlie PD,1992)

In 1992, the BMJ published a now famous paper showing a strong negative correlation between income inequality and life expectancy. Among nine Western industrialised countries those which had less income inequality seemed to have higher life expectancy.<sup>[14](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1121932/pdf/1.pdf)</sup>(Johan P Mackenbach,2002)

Moreover, Muller shows that most of the correlation between income inequality and mortality at the aggregate level in the United States can be explained away by differences in average levels of formal education (p 23).21 This is not surprising in itself, because others have shown before that income inequality is strongly and negatively associated with measures of educational achievement in the United States.2 The main issue is whether we should see educational achievement as a confounder or an intermediary between income inequality and mortality.<sup>[19](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC61654/pdf/23.pdf)</sup>
(Andreas Muller,2002)

Another possible explanation is that some of the possible pathways linking income inequality and mortality cannot be expected to operate at this low geographical level. Would individuals feel relatively deprived because of a comparison with others’ incomes in the same small area, or because of comparisons within a larger social environment? Would income inequality be associated with underinvestment in public resources within the same small area, or would this mechanism operate on a larger geographical scale? It would be useful to replicate these analyses with different geographical scales, and in different European countries.<sup>[14](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1121932/pdf/1.pdf)</sup>(Johan P Mackenbach,2002)

Humerous studies have been conducted on this topic, but these studies only suggest that there are still more confounding factors or unknown correlations remained to be discovered. Or maybe such correlation between income inequality and the health of the population is slowly dissipating? at least in the U.S and who knows? Thereofore, it would be interesting to explore deeper into the unknown water of this study and in the hope of finding more convincing evidence to form better phypothesis in the near future, and as result, come up with more effecitve policies or plans to help improve the social balance of the world we live in. 

### 7: Hypothesis

Primary hypothesis

* 1: **HIV/AIDs Prevalence** correlates with **urbanization** in both the developed and developing nations and have different patterns of development. 

* 2: The **Internet rate** plays a critical role in influencing people's awareness on HIV infection and prevention across the globe.

Secondary hypothesis

Socioeconomic status and income levels have a direct correlation with life expectancy globally. 

### Reference

1: [Dyson, T. (2003), HIV/AIDS and Urbanization. Population and Development Review, 29: 427–442. doi: 10.1111/j.1728-4457.2003.00427.x](http://onlinelibrary.wiley.com/doi/10.1111/j.1728-4457.2003.00427.x/abstract)

2: [Morse SS. Factors in the emergence of infectious diseases. Emerging Infectious Diseases. 1995;1(1):7-15.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2626828/pdf/8903148.pdf)

3: [Mirjam Van Donk “Positive” urban futures in sub-Saharan Africa: HIV/AIDS and the need for ABC (A Broader Conceptualization)Environment and Urbanization April 2006 18: 155-175, doi:10.1177/0956247806063971](http://eau.sagepub.com/content/18/1/155.full.pdf+html)

4: [HIV/AIDS-related information needs of urban and rural residents of northwest Ethiopia: Alerting the rural populace and meeting the progressive needs of the urban populace](http://idv.sagepub.com/content/29/4/323.full.pdf+html?cited-by=yes&legid=spidv;29/4/323#cited-by)

5: [Barney Cohen. (2005),Urbanization in developing countries: Current trends, future projections, and key challenges for sustainability, Volume 28, Issues 1–2, January–April 2006, Pages 63–80](http://ac.els-cdn.com/S0160791X05000588/1-s2.0-S0160791X05000588-main.pdf?_tid=d268c95a-5f37-11e5-831c-00000aacb360&acdnat=1442713086_4283cba38630c5f1c45bc1c827ef4e70)

6: [Piot P, Laga M, Ryder R, et al. The global epidemiology of HIV infection: continuity, heterogeneity, and change. J Acquir Immune Defic Syndr. 1990;3(4):403-12.](http://journals.lww.com/jaids/Citation/1990/04000/The_Global_Epidemiology_of_HIV_Infection_.16.aspx)

7: [Mcfarlane M, Bull SS, Rietmeijer CA. Young adults on the Internet: risk behaviors for sexually transmitted diseases and HIV(1). J Adolesc Health. 2002;31(1):11-6.](http://www.sciencedirect.com/science/article/pii/S1054139X02003737)

8: [Kalichman SC, Benotsch EG, Weinhardt L, Austin J, Luke W, Cherry C. Health-related Internet use, coping, social support, and health indicators in people living with HIV/AIDS: preliminary results from a community survey. Health Psychol. 2003;22(1):111-6.](http://www.ncbi.nlm.nih.gov/pubmed/?term=Health-related+Internet+use%2C+coping%2C+social+support%2C+and+health+indicators+in+people+living+with+HIV%2FAIDS%3A+preliminary+results+from+a+community+survey.+Health+Psychol.+2003%3B22(1)%3A111-6.)

9: [Green SM, Lockhart E, Marhefka SL. Advantages and disadvantages for receiving Internet-based HIV/AIDS interventions at home or at community-based organizations. AIDS Care. 2015;:1-5.](http://www.ncbi.nlm.nih.gov/pubmed/26357907)

10: [Bucholz EM, Ma S, Normand ST, Krumholz HM. Race, Socioeconomic Status, and Life Expectancy After Acute Myocardial Infarction. Circulation. 2015;](http://www.ncbi.nlm.nih.gov/pubmed/26369354)

11: [Love-koh J, Asaria M, Cookson R, Griffin S. The Social Distribution of Health: Estimating Quality-Adjusted Life Expectancy in England. Value Health. 2015;18(5):655-62.](http://www.ncbi.nlm.nih.gov/pubmed/26297094)

12: [Arjun BY, Unnikrishnan B, Ramapuram JT, et al. Factors Influencing Quality of Life among People Living with HIV in Coastal South India. J Int Assoc Provid AIDS Care. 2015;](http://www.ncbi.nlm.nih.gov/pubmed/26251226)

13: [Rogot E, Sorlie PD, Johnson NJ. Life expectancy by employment status, income, and education in the National Longitudinal Mortality Study. Public Health Rep. 1992;107(4):457-61.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1403677/pdf/pubhealthrep00072-0091.pdf)

14: [Mackenbach JP. Income inequality and population health. BMJ. 2002;324(7328):1-2.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1121932/pdf/1.pdf)

15: [Krasnova TN, Samokhodskaia LM, Ivaninitskiĭ LV, et al. [Impact of interleukin-10 and interleukin-28 gene polymorphisms on the development and course of lupus nephritis]. Ter Arkh. 2015;87(6):40-4.](http://www.tandfonline.com/doi/abs/10.1080/00324728.1979.10410449)

16: [Singh GK, Siahpush M. Widening socioeconomic inequalities in US life expectancy, 1980-2000. Int J Epidemiol. 2006;35(4):969-79.](http://ije.oxfordjournals.org/content/35/4/969.full.pdf+html)

17: [Guralnik JM, Land KC, Blazer D, Fillenbaum GG, Branch LG. Educational status and active life expectancy among older blacks and whites. N Engl J Med. 1993;329(2):110-6.](http://www.nejm.org/doi/pdf/10.1056/NEJM199307083290208)

18: [Judge K. Income distribution and life expectancy: a critical appraisal. BMJ. 1995;311(7015):1282-5.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2551188/pdf/bmj00618-0048.pdf)

19: [Muller A. Education, income inequality, and mortality: a multiple regression analysis. BMJ 2002;324:23-5.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC61654/pdf/23.pdf)

### Recourses

1: Citation Machine [MICK SCHROEDER](https://mickschroeder.com/citation/?q=2179527)

2: [Pubmed](http://www.ncbi.nlm.nih.gov/pubmed)

3: [Google Scholar](https://scholar.google.com/schhp?hl=en&as_sdt=0,25)



### Review Criteria 

Your assessment will be based on the evidence you provide that you have completed all of the steps. When relevant, gradients in the scoring will be available to reward clarity (for example, you will get one point for having a research question presented in an unclear fashion, but two points for being clear). In all cases, consider that the peer assessing your work is likely not an expert in the field you are analyzing. You will be assessed equally on your reflection of the literature you’ve discovered and the project you are proposing.

Specific rubric items, and their point values, are as follows: 

* Has the learner selected a data set and indicated that selection? (1 point) 

* Has the learner clearly stated a research question and hypothesis? (2 points) 

* Does the literature review include clear information about search terms used? (1 point) 

* Does the literature review clearly identify references used? (2 points) 

* Does the literature review clearly present a summary of findings (e.g., variables considered, patterns of findings, etc.)? (2 points)
