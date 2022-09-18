# Import libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
plt.style.use('ggplot')
import re

# Read in the data
df = pd.read_csv(r'C:\Users\crae1\Documents\GWG\RLCSData\matches_cleaned.csv')

# Create df for each core shots value range
df010 = df.loc[df['core_shots'].between(0,10)]
df1020 = df.loc[df['core_shots'].between(10,20)]
df2030 = df.loc[df['core_shots'].between(20,30)]
df3040 = df.loc[df['core_shots'].between(30,40)]
df4050 = df.loc[df['core_shots'].between(40,50)]
df5060 = df.loc[df['core_shots'].between(50,60)]
df6070 = df.loc[df['core_shots'].between(60,70)]
df7080= df.loc[df['core_shots'].between(70,80)]


# Create df for each movement distance for each core shot range
dfm0104 = df010.loc[df010['movement_total_distance'].between(3500000,4000000)]
dfm01045 = df010.loc[df010['movement_total_distance'].between(4000000,4500000)]
dfm0105= df010.loc[df010['movement_total_distance'].between(4500000,5000000)]
dfm01055 = df010.loc[df010['movement_total_distance'].between(5000000,5500000)]
dfm0106 = df010.loc[df010['movement_total_distance'].between(5500000,6000000)]
dfm01065 = df010.loc[df010['movement_total_distance'].between(6000000,6500000)]
dfm0107 = df010.loc[df010['movement_total_distance'].between(6500000,7000000)]
dfm01075 = df010.loc[df010['movement_total_distance'].between(7000000,7500000)]
dfm0108 = df010.loc[df010['movement_total_distance'].between(7500000,8000000)]

dfm10204 = df1020.loc[df1020['movement_total_distance'].between(3500000,4000000)]
dfm102045 = df1020.loc[df1020['movement_total_distance'].between(4000000,4500000)]
dfm10205= df1020.loc[df1020['movement_total_distance'].between(4500000,5000000)]
dfm102055 = df1020.loc[df1020['movement_total_distance'].between(5000000,5500000)]
dfm10206 = df1020.loc[df1020['movement_total_distance'].between(5500000,6000000)]
dfm102065 = df1020.loc[df1020['movement_total_distance'].between(6000000,6500000)]
dfm10207 = df1020.loc[df1020['movement_total_distance'].between(6500000,7000000)]
dfm102075 = df1020.loc[df1020['movement_total_distance'].between(7000000,7500000)]
dfm10208 = df1020.loc[df1020['movement_total_distance'].between(7500000,8000000)]

dfm20304 = df2030.loc[df2030['movement_total_distance'].between(3500000,4000000)]
dfm203045 = df2030.loc[df2030['movement_total_distance'].between(4000000,4500000)]
dfm20305= df2030.loc[df2030['movement_total_distance'].between(4500000,5000000)]
dfm203055 = df2030.loc[df2030['movement_total_distance'].between(5000000,5500000)]
dfm20306 = df2030.loc[df2030['movement_total_distance'].between(5500000,6000000)]
dfm203065 = df2030.loc[df2030['movement_total_distance'].between(6000000,6500000)]
dfm20307 = df2030.loc[df2030['movement_total_distance'].between(6500000,7000000)]
dfm203075 = df2030.loc[df2030['movement_total_distance'].between(7000000,7500000)]
dfm20308 = df2030.loc[df2030['movement_total_distance'].between(7500000,8000000)]

dfm30404 = df3040.loc[df3040['movement_total_distance'].between(3500000,4000000)]
dfm304045 = df3040.loc[df3040['movement_total_distance'].between(4000000,4500000)]
dfm30405= df3040.loc[df3040['movement_total_distance'].between(4500000,5000000)]
dfm304055 = df3040.loc[df3040['movement_total_distance'].between(5000000,5500000)]
dfm30406 = df3040.loc[df3040['movement_total_distance'].between(5500000,6000000)]
dfm304065 = df3040.loc[df3040['movement_total_distance'].between(6000000,6500000)]
dfm30407 = df3040.loc[df3040['movement_total_distance'].between(6500000,7000000)]
dfm304075 = df3040.loc[df3040['movement_total_distance'].between(7000000,7500000)]
dfm30408 = df3040.loc[df3040['movement_total_distance'].between(7500000,8000000)]

dfm40504 = df4050.loc[df4050['movement_total_distance'].between(3500000,4000000)]
dfm405045 = df4050.loc[df4050['movement_total_distance'].between(4000000,4500000)]
dfm40505= df4050.loc[df4050['movement_total_distance'].between(4500000,5000000)]
dfm405055 = df4050.loc[df4050['movement_total_distance'].between(5000000,5500000)]
dfm40506 = df4050.loc[df4050['movement_total_distance'].between(5500000,6000000)]
dfm405065 = df4050.loc[df4050['movement_total_distance'].between(6000000,6500000)]
dfm40507 = df4050.loc[df4050['movement_total_distance'].between(6500000,7000000)]
dfm405075 = df4050.loc[df4050['movement_total_distance'].between(7000000,7500000)]
dfm40508 = df4050.loc[df4050['movement_total_distance'].between(7500000,8000000)]

dfm50604 = df5060.loc[df5060['movement_total_distance'].between(3500000,4000000)]
dfm506045 = df5060.loc[df5060['movement_total_distance'].between(4000000,4500000)]
dfm50605= df5060.loc[df5060['movement_total_distance'].between(4500000,5000000)]
dfm506055 = df5060.loc[df5060['movement_total_distance'].between(5000000,5500000)]
dfm50606 = df5060.loc[df5060['movement_total_distance'].between(5500000,6000000)]
dfm506065 = df5060.loc[df5060['movement_total_distance'].between(6000000,6500000)]
dfm50607 = df5060.loc[df5060['movement_total_distance'].between(6500000,7000000)]
dfm506075 = df5060.loc[df5060['movement_total_distance'].between(7000000,7500000)]
dfm50608 = df5060.loc[df5060['movement_total_distance'].between(7500000,8000000)]

dfm60704 = df6070.loc[df6070['movement_total_distance'].between(3500000,4000000)]
dfm607045 = df6070.loc[df6070['movement_total_distance'].between(4000000,4500000)]
dfm60705= df6070.loc[df6070['movement_total_distance'].between(4500000,5000000)]
dfm607055 = df6070.loc[df6070['movement_total_distance'].between(5000000,5500000)]
dfm60706 = df6070.loc[df6070['movement_total_distance'].between(5500000,6000000)]
dfm607065 = df6070.loc[df6070['movement_total_distance'].between(6000000,6500000)]
dfm60707 = df6070.loc[df6070['movement_total_distance'].between(6500000,7000000)]
dfm607075 = df6070.loc[df6070['movement_total_distance'].between(7000000,7500000)]
dfm60708 = df6070.loc[df6070['movement_total_distance'].between(7500000,8000000)]

dfm70804 = df7080.loc[df7080['movement_total_distance'].between(3500000,4000000)]
dfm708045 = df7080.loc[df7080['movement_total_distance'].between(4000000,4500000)]
dfm70805= df7080.loc[df7080['movement_total_distance'].between(4500000,5000000)]
dfm708055 = df7080.loc[df7080['movement_total_distance'].between(5000000,5500000)]
dfm70806 = df7080.loc[df7080['movement_total_distance'].between(5500000,6000000)]
dfm708065 = df7080.loc[df7080['movement_total_distance'].between(6000000,6500000)]
dfm70807 = df7080.loc[df7080['movement_total_distance'].between(6500000,7000000)]
dfm708075 = df7080.loc[df7080['movement_total_distance'].between(7000000,7500000)]
dfm70808 = df7080.loc[df7080['movement_total_distance'].between(7500000,8000000)]

# Apply .name to each dataframe
dfm0104.name = '0104'
dfm01045.name = '01045'
dfm0105.name = '0105'
dfm01055.name = '01055'
dfm0106.name = '0106'
dfm01065.name = '01065'
dfm0107.name = '0107'
dfm01075.name = '01075'
dfm0108.name = '0108'

dfm10204.name = '10204'
dfm102045.name = '102045'
dfm10205.name = '10205'
dfm102055.name = '102055'
dfm10206.name = '10206'
dfm102065.name = '102065'
dfm10207.name = '10207'
dfm102075.name = '102075'
dfm10208.name = '10208'

dfm20304.name = '20304'
dfm203045.name = '203045'
dfm20305.name = '20305'
dfm203055.name = '203055'
dfm20306.name = '20306'
dfm203065.name = '203065'
dfm20307.name = '20307'
dfm203075.name = '203075'
dfm20308.name = '20308'

dfm30404.name = '30404'
dfm304045.name = '304045'
dfm30405.name = '30405'
dfm304055.name = '304055'
dfm30406.name = '30406'
dfm304065.name = '304065'
dfm30407.name = '30407'
dfm304075.name = '304075'
dfm30408.name = '30408'

dfm40504.name = '40504'
dfm405045.name = '405045'
dfm40505.name = '40505'
dfm405055.name = '405055'
dfm40506.name = '40506'
dfm405065.name = '405065'
dfm40507.name = '40507'
dfm405075.name = '405075'
dfm40508.name = '40508'

dfm50604.name = '50604'
dfm506045.name = '506045'
dfm50605.name = '50605'
dfm506055.name = '506055'
dfm50606.name = '50606'
dfm506065.name = '506065'
dfm50607.name = '50607'
dfm506075.name = '506075'
dfm50608.name = '50608'

dfm60704.name = '60704'
dfm607045.name = '607045'
dfm60705.name = '60705'
dfm607055.name = '607055'
dfm60706.name = '60706'
dfm607065.name = '607065'
dfm60707.name = '60707'
dfm607075.name = '607075'
dfm60708.name = '60708'

dfm70804.name = '70804'
dfm708045.name = '708045'
dfm70805.name = '70805'
dfm708055.name = '708055'
dfm70806.name = '70806'
dfm708065.name = '708065'
dfm70807.name = '70807'
dfm708075.name = '708075'
dfm70808.name = '70808'



# Create a list of all dataframes
tables = [dfm0104,dfm01045,dfm0105,dfm01055,dfm0106,dfm01065,dfm0107,dfm01075,dfm0108,dfm10204,dfm102045,dfm10205,dfm102055,dfm10206,dfm102065,dfm10207,dfm102075,dfm10208,
dfm20304,dfm203045,dfm20305,dfm203055,dfm20306,dfm203065,dfm20307,dfm203075,dfm20308,dfm30404,dfm304045,dfm30405,dfm304055,dfm30406,dfm304065,dfm30407,dfm304075,dfm30408,
dfm40504,dfm405045,dfm40505,dfm405055,dfm40506,dfm405065,dfm40507,dfm405075,dfm40508,dfm50604,dfm506045,dfm50605,dfm506055,dfm50606,dfm506065,dfm50607,dfm506075,dfm50608,
dfm60704,dfm607045,dfm60705,dfm607055,dfm60706,dfm607065,dfm60707,dfm607075,dfm60708,dfm70804,dfm708045,dfm70805,dfm708055,dfm70806,dfm708065,dfm70807,dfm708075,dfm70808]


# Initialise list of names and winrate list
name_list =[]
win_rate_list = []



# Loop through all grouped dataframes and append only the groups with a winrate > than 80% to respective lists
for name in tables:
    if name[name['winner'] == True]['winner'].count()/name['winner'].count() > .80:
            name_list.append(name.name)
            win_rate_list.append(name[name['winner'] == True]['winner'].count()/name['winner'].count())
            
# Create final df from name and win rate lists
winrate_df = pd.DataFrame({'Group' : name_list, 'Win_Rate' : win_rate_list})
winrate_df = winrate_df.sort_values(by=['Win_Rate'], ascending=False)


# Create viz
winrate_df.plot(kind='bar', title='Factors Affecting Win Rate in the RLCS', x='Group', ylabel='Win Rate', xlabel='No. of Shots + Movement Distance Code', figsize=(10,6), color='r')