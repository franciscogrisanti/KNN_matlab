%%% FRANCISCO GRISANTI  %%%


clc
clear
close all

%%% FINAL PROJECT - DOUBLE STIMULUS PARADIGM  %%%

%% loading datasets


%loading stimuli one for all subjects

z1_s1 = dlmread('All_Subj_S1/Subject01_S1_Cz_1_20_iICA.dat');
z1_s3 = dlmread('All_Subj_S1/Subject03_S1_Cz_1_20_iICA.dat');
z1_s4 = dlmread('All_Subj_S1/Subject04_S1_Cz_1_20_iICA.dat');
z1_s5 = dlmread('All_Subj_S1/Subject05_S1_Cz_1_20_iICA.dat');
%z1_s8 = dlmread('All_Subj_S1/Subject08_S1_Cz_1_20_iICA.dat');
z1_s12 = dlmread('All_Subj_S1/Subject12_S1_Cz_1_20_iICA.dat');
z1_s13 = dlmread('All_Subj_S1/Subject13_S1_Cz_1_20_iICA.dat');
z1_s14 = dlmread('All_Subj_S1/Subject14_S1_Cz_1_20_iICA.dat');
z1_s15 = dlmread('All_Subj_S1/Subject15_S1_Cz_1_20_iICA.dat');
z1_s16 = dlmread('All_Subj_S1/Subject16_S1_Cz_1_20_iICA.dat');
z1_s19 = dlmread('All_Subj_S1/Subject19_S1_Cz_1_20_iICA.dat');
z1_s20 = dlmread('All_Subj_S1/Subject20_S1_Cz_1_20_iICA.dat');
z1_s21 = dlmread('All_Subj_S1/Subject21_S1_Cz_1_20_iICA.dat');
z1_s24 = dlmread('All_Subj_S1/Subject24_S1_Cz_1_20_iICA.dat');
z1_s29 = dlmread('All_Subj_S1/Subject29_S1_Cz_1_20_iICA.dat');
z1_s31 = dlmread('All_Subj_S1/Subject31_S1_Cz_1_20_iICA.dat');
z1_s35 = dlmread('All_Subj_S1/Subject35_S1_Cz_1_20_iICA.dat');
z1_s36 = dlmread('All_Subj_S1/Subject36_S1_Cz_1_20_iICA.dat');

%loading stimuli two for all subjects

z2_s1 = dlmread('All_Subj_S2/Subject01_S2_Cz_1_20_iICA.dat');
z2_s3 = dlmread('All_Subj_S2/Subject03_S2_Cz_1_20_iICA.dat');
z2_s4 = dlmread('All_Subj_S2/Subject04_S2_Cz_1_20_iICA.dat');
z2_s5 = dlmread('All_Subj_S2/Subject05_S2_Cz_1_20_iICA.dat');
%z2_s8 = dlmread('All_Subj_S2/Subject08_S2_Cz_1_20_iICA.dat');
z2_s12 = dlmread('All_Subj_S2/Subject12_S2_Cz_1_20_iICA.dat');
z2_s13 = dlmread('All_Subj_S2/Subject13_S2_Cz_1_20_iICA.dat');
z2_s14 = dlmread('All_Subj_S2/Subject14_S2_Cz_1_20_iICA.dat');
z2_s15 = dlmread('All_Subj_S2/Subject15_S2_Cz_1_20_iICA.dat');
z2_s16 = dlmread('All_Subj_S2/Subject16_S2_Cz_1_20_iICA.dat');
z2_s19 = dlmread('All_Subj_S2/Subject19_S2_Cz_1_20_iICA.dat');
z2_s20 = dlmread('All_Subj_S2/Subject20_S2_Cz_1_20_iICA.dat');
z2_s21 = dlmread('All_Subj_S2/Subject21_S2_Cz_1_20_iICA.dat');
z2_s24 = dlmread('All_Subj_S2/Subject24_S2_Cz_1_20_iICA.dat');
z2_s29 = dlmread('All_Subj_S2/Subject29_S2_Cz_1_20_iICA.dat');
z2_s31 = dlmread('All_Subj_S2/Subject31_S2_Cz_1_20_iICA.dat');
z2_s35 = dlmread('All_Subj_S2/Subject35_S2_Cz_1_20_iICA.dat');
z2_s36 = dlmread('All_Subj_S2/Subject36_S2_Cz_1_20_iICA.dat');

%%% z2_s08 was eliminated due to corruption

subjects = [1,3,4,5,12,13,14,15,16,19,20,21,24,29,31,35,36]' ;


%% plot ex.

%plot(z1_s1(:,:)')
%hold on
%plot(z2_s1(:,:)')
%plot(table2array(z1_max('s1',:)))
%hist(table2array(z1_max('s1',:)))

%% VECTOR ARITHMETICS! IN TABLES

%%%create tables with averages responses

z1_mean_vector = ( [mean(z1_s1);mean(z1_s3);mean(z1_s4);mean(z1_s5);...
    mean(z1_s12);mean(z1_s13);mean(z1_s14);mean(z1_s15);mean(z1_s16);...
    mean(z1_s19);mean(z1_s20);mean(z1_s21);mean(z1_s24);mean(z1_s29);...
    mean(z1_s31);mean(z1_s35);mean(z1_s36)]);

z2_mean_vector = ( [mean(z2_s1);mean(z2_s3);mean(z2_s4);mean(z2_s5);...
    mean(z2_s12);mean(z2_s13);mean(z2_s14);mean(z2_s15);mean(z2_s16);...
    mean(z2_s19);mean(z2_s20);mean(z2_s21);mean(z2_s24);mean(z2_s29);...
    mean(z2_s31);mean(z2_s35);mean(z2_s36)]);

%%% create table with min values

z1_min_vector= ( [min(z1_s1);min(z1_s3);min(z1_s4);min(z1_s5);...
    min(z1_s12);min(z1_s13);min(z1_s14);min(z1_s15);min(z1_s16);...
    min(z1_s19);min(z1_s20);min(z1_s21);min(z1_s24);min(z1_s29);...
    min(z1_s31);min(z1_s35);min(z1_s36)]);

z2_min_vector = ( [min(z2_s1);min(z2_s3);min(z2_s4);min(z2_s5);...
    min(z2_s12);min(z2_s13);min(z2_s14);min(z2_s15);min(z2_s16);...
    min(z2_s19);min(z2_s20);min(z2_s21);min(z2_s24);min(z2_s29);...
    min(z2_s31);min(z2_s35);min(z2_s36)]);

%%% create table with max values

z1_max_vector = ( [max(z1_s1);max(z1_s3);max(z1_s4);max(z1_s5);...
    max(z1_s12);max(z1_s13);max(z1_s14);max(z1_s15);max(z1_s16);...
    max(z1_s19);max(z1_s20);max(z1_s21);max(z1_s24);max(z1_s29);...
    max(z1_s31);max(z1_s35);max(z1_s36)]);

z2_max_vector = ( [max(z2_s1);mean(z2_s3);max(z2_s4);max(z2_s5);...
    max(z2_s12);max(z2_s13);max(z2_s14);max(z2_s15);max(z2_s16);...
    max(z2_s19);max(z2_s20);max(z2_s21);max(z2_s24);max(z2_s29);...
    max(z2_s31);max(z2_s35);max(z2_s36)]);

%%% create table vector with median values

z1_median_vector = ( [median(z1_s1);median(z1_s3);median(z1_s4);median(z1_s5);...
    median(z1_s12);median(z1_s13);median(z1_s14);median(z1_s15);median(z1_s16);...
    median(z1_s19);median(z1_s20);median(z1_s21);median(z1_s24);median(z1_s29);...
    median(z1_s31);median(z1_s35);median(z1_s36)]);

z2_median_vector = ( [median(z2_s1);median(z2_s3);median(z2_s4);median(z2_s5);...
    median(z2_s12);median(z2_s13);median(z2_s14);median(z2_s15);median(z2_s16);...
    median(z2_s19);median(z2_s20);median(z2_s21);median(z2_s24);median(z2_s29);...
    median(z2_s31);median(z2_s35);median(z2_s36)]);

%%% create table with std values

z1_std_vector = ( [std(z1_s1);std(z1_s3);std(z1_s4);std(z1_s5);...
    std(z1_s12);std(z1_s13);std(z1_s14);std(z1_s15);std(z1_s16);...
    std(z1_s19);std(z1_s20);std(z1_s21);std(z1_s24);std(z1_s29);...
    std(z1_s31);std(z1_s35);std(z1_s36)]);

z2_std_vector = ( [std(z2_s1);std(z2_s3);std(z2_s4);std(z2_s5);...
    std(z2_s12);std(z2_s13);std(z2_s14);std(z2_s15);std(z2_s16);...
    std(z2_s19);std(z2_s20);std(z2_s21);std(z2_s24);std(z2_s29);...
    std(z2_s31);std(z2_s35);std(z2_s36)]);

%% VECTOR ARITHMETICS! RESUMED IN POINT


z1_min_value = ( [ min(min(z1_s1)); min(min(z1_s3));min(min(z1_s4)); min(min(z1_s5));...
    min(min(z1_s12)); min(min(z1_s13)); min(min(z1_s14)); min(min(z1_s15)); min(min(z1_s16));...
    min(min(z1_s19)); min(min(z1_s20)); min(min(z1_s21)); min(min(z1_s24)) ; min(min(z1_s29)) ;...
   min(min(z1_s31)); min(min(z1_s35)) ; min(min(z1_s36)) ]);

z2_min_value = ( [ min(min(z2_s1)); min(min(z2_s3));min(min(z2_s4)); min(min(z2_s5));...
    min(min(z2_s12)); min(min(z2_s13)); min(min(z2_s14)); min(min(z2_s15)); min(min(z2_s16));...
    min(min(z2_s19)); min(min(z2_s20)); min(min(z2_s21)); min(min(z2_s24)) ; min(min(z2_s29)) ;...
   min(min(z2_s31)); min(min(z2_s35)) ; min(min(z2_s36)) ]);

z1_max_value = ( [ max(max(z1_s1)); max(max(z1_s3));max(max(z1_s4)); max(max(z1_s5));...
    max(max(z1_s12)); max(max(z1_s13)); max(max(z1_s14)); max(max(z1_s15)); max(max(z1_s16));...
    max(max(z1_s19)); max(max(z1_s20)); max(max(z1_s21)); max(max(z1_s24)) ; max(max(z1_s29)) ;...
   max(max(z1_s31)); max(max(z1_s35)) ; max(max(z1_s36)) ]);
                          
z2_max_value = ( [ max(max(z2_s1)); max(max(z2_s3));max(max(z2_s4)); max(max(z2_s5));...
    max(max(z2_s12)); max(max(z2_s13)); max(max(z2_s14)); max(max(z2_s15)); max(max(z2_s16));...
    max(max(z2_s19)); max(max(z2_s20)); max(max(z2_s21)); max(max(z2_s24)) ; max(max(z2_s29)) ;...
   max(max(z2_s31)); max(max(z2_s35)) ; max(max(z2_s36)) ]);

z1_mean_value = ( [ mean(mean(z1_s1)); mean(mean(z1_s3));mean(mean(z1_s4)); mean(mean(z1_s5));...
    mean(mean(z1_s12)); mean(mean(z1_s13)); mean(mean(z1_s14)); mean(mean(z1_s15)); mean(mean(z1_s16));...
    mean(mean(z1_s19)); mean(mean(z1_s20)); mean(mean(z1_s21)); mean(mean(z1_s24)) ; mean(mean(z1_s29)) ;...
   mean(mean(z1_s31)); mean(mean(z1_s35)) ; mean(mean(z1_s36)) ]);

z2_mean_value = ( [ mean(mean(z2_s1)); mean(mean(z2_s3));mean(mean(z2_s4)); mean(mean(z2_s5));...
    mean(mean(z2_s12)); mean(mean(z2_s13)); mean(mean(z2_s14)); mean(mean(z2_s15)); mean(mean(z2_s16));...
    mean(mean(z2_s19)); mean(mean(z2_s20)); mean(mean(z2_s21)); mean(mean(z2_s24)) ; mean(mean(z2_s29)) ;...
   mean(mean(z2_s31)); mean(mean(z2_s35)) ; mean(mean(z2_s36)) ]);
                                            
z1_median_value = ( [ median(median(z1_s1)); median(median(z1_s3));median(median(z1_s4)); median(median(z1_s5));...
    median(median(z1_s12)); median(median(z1_s13)); median(median(z1_s14)); median(median(z1_s15)); median(median(z1_s16));...
    median(median(z1_s19)); median(median(z1_s20)); median(median(z1_s21)); median(median(z1_s24)) ; median(median(z1_s29)) ;...
   median(median(z1_s31)); median(median(z1_s35)) ; median(median(z1_s36)) ]);

z2_median_value = ( [ median(median(z2_s1)); median(median(z2_s3));median(median(z2_s4)); median(median(z2_s5));...
    median(median(z2_s12)); median(median(z2_s13)); median(median(z2_s14)); median(median(z2_s15)); median(median(z2_s16));...
    median(median(z2_s19)); median(median(z2_s20)); median(median(z2_s21)); median(median(z2_s24)) ; median(median(z2_s29)) ;...
   median(median(z2_s31)); median(median(z2_s35)) ; median(median(z2_s36)) ]);
                           
z1_std_value = ( [ std(std(z1_s1)); std(std(z1_s3));std(std(z1_s4)); std(std(z1_s5));...
    std(std(z1_s12)); std(std(z1_s13)); std(std(z1_s14)); std(std(z1_s15)); std(std(z1_s16));...
    std(std(z1_s19)); std(std(z1_s20)); std(std(z1_s21)); std(std(z1_s24)) ; std(std(z1_s29)) ;...
   std(std(z1_s31)); std(std(z1_s35)) ; std(std(z1_s36)) ]);

z2_std_value = ([ std(std(z2_s1)); std(std(z2_s3));std(std(z2_s4)); std(std(z2_s5));...
    std(std(z2_s12)); std(std(z2_s13)); std(std(z2_s14)); std(std(z2_s15)); std(std(z2_s16));...
    std(std(z2_s19)); std(std(z2_s20)); std(std(z2_s21)); std(std(z2_s24)) ; std(std(z2_s29)) ;...
   std(std(z2_s31)); std(std(z2_s35)) ; std(std(z2_s36)) ]);

%% LATENCY

%latency for individuals trials s1

%z1_s1
for n= 1:length(z1_s1(:,1))
    [maximo,latency_max] = max(z1_s1(n,:));
    [minimo,latency_min] = min(z1_s1(n,:));
    std_dev = std(z1_s1(n,:));
    average = mean(z1_s1(n,:));
    median_value = median(z1_s1(n,:));
    
    z1_s1(n,702) = maximo;
    z1_s1(n,703) = latency_max;
    z1_s1(n,704) = minimo;
    z1_s1(n,704) = latency_min;
    z1_s1(n,705) = std_dev;
    z1_s1(n,706) = average;
    z1_s1(n,707) = median_value; 
end

%z1_s3
for n= 1:length(z1_s3(:,1))
    [maximo,latency_max] = max(z1_s3(n,:));
    [minimo,latency_min] = min(z1_s3(n,:));
    std_dev = std(z1_s3(n,:));
    average = mean(z1_s3(n,:));
    median_value = median(z1_s3(n,:));
    
    z1_s3(n,702) = maximo;
    z1_s3(n,703) = latency_max;
    z1_s3(n,704) = minimo;
    z1_s3(n,704) = latency_min;
    z1_s3(n,705) = std_dev;
    z1_s3(n,706) = average;
    z1_s3(n,707) = median_value; 
end

%z1_s4
for n= 1:length(z1_s4(:,1))
    [maximo,latency_max] = max(z1_s4(n,:));
    [minimo,latency_min] = min(z1_s4(n,:));
    std_dev = std(z1_s4(n,:));
    average = mean(z1_s4(n,:));
    median_value = median(z1_s4(n,:));
    
    z1_s4(n,702) = maximo;
    z1_s4(n,703) = latency_max;
    z1_s4(n,704) = minimo;
    z1_s4(n,704) = latency_min;
    z1_s4(n,705) = std_dev;
    z1_s4(n,706) = average;
    z1_s4(n,707) = median_value; 
end

%z1_s5
for n= 1:length(z1_s5(:,1))
    [maximo,latency_max] = max(z1_s5(n,:));
    [minimo,latency_min] = min(z1_s5(n,:));
    std_dev = std(z1_s5(n,:));
    average = mean(z1_s5(n,:));
    median_value = median(z1_s5(n,:));
    
    z1_s5(n,702) = maximo;
    z1_s5(n,703) = latency_max;
    z1_s5(n,704) = minimo;
    z1_s5(n,704) = latency_min;
    z1_s5(n,705) = std_dev;
    z1_s5(n,706) = average;
    z1_s5(n,707) = median_value; 
end

%z1_s12
for n= 1:length(z1_s12(:,1))
    [maximo,latency_max] = max(z1_s12(n,:));
    [minimo,latency_min] = min(z1_s12(n,:));
    std_dev = std(z1_s12(n,:));
    average = mean(z1_s12(n,:));
    median_value = median(z1_s12(n,:));
    
    z1_s12(n,702) = maximo;
    z1_s12(n,703) = latency_max;
    z1_s12(n,704) = minimo;
    z1_s12(n,704) = latency_min;
    z1_s12(n,705) = std_dev;
    z1_s12(n,706) = average;
    z1_s12(n,707) = median_value; 
end

%z1_s13
for n= 1:length(z1_s13(:,1))
    [maximo,latency_max] = max(z1_s13(n,:));
    [minimo,latency_min] = min(z1_s13(n,:));
    std_dev = std(z1_s13(n,:));
    average = mean(z1_s13(n,:));
    median_value = median(z1_s13(n,:));
    
    z1_s13(n,702) = maximo;
    z1_s13(n,703) = latency_max;
    z1_s13(n,704) = minimo;
    z1_s13(n,704) = latency_min;
    z1_s13(n,705) = std_dev;
    z1_s13(n,706) = average;
    z1_s13(n,707) = median_value; 
end

%z1_s14
for n= 1:length(z1_s14(:,1))
    [maximo,latency_max] = max(z1_s14(n,:));
    [minimo,latency_min] = min(z1_s14(n,:));
    std_dev = std(z1_s14(n,:));
    average = mean(z1_s14(n,:));
    median_value = median(z1_s14(n,:));
    
    z1_s14(n,702) = maximo;
    z1_s14(n,703) = latency_max;
    z1_s14(n,704) = minimo;
    z1_s14(n,704) = latency_min;
    z1_s14(n,705) = std_dev;
    z1_s14(n,706) = average;
    z1_s14(n,707) = median_value; 
end

%z1_s15
for n= 1:length(z1_s15(:,1))
    [maximo,latency_max] = max(z1_s15(n,:));
    [minimo,latency_min] = min(z1_s15(n,:));
    std_dev = std(z1_s15(n,:));
    average = mean(z1_s15(n,:));
    median_value = median(z1_s15(n,:));
    
    z1_s15(n,702) = maximo;
    z1_s15(n,703) = latency_max;
    z1_s15(n,704) = minimo;
    z1_s15(n,704) = latency_min;
    z1_s15(n,705) = std_dev;
    z1_s15(n,706) = average;
    z1_s15(n,707) = median_value; 
end
 
%z1_s16
for n= 1:length(z1_s16(:,1))
    [maximo,latency_max] = max(z1_s16(n,:));
    [minimo,latency_min] = min(z1_s16(n,:));
    std_dev = std(z1_s16(n,:));
    average = mean(z1_s16(n,:));
    median_value = median(z1_s16(n,:));
    
    z1_s16(n,702) = maximo;
    z1_s16(n,703) = latency_max;
    z1_s16(n,704) = minimo;
    z1_s16(n,704) = latency_min;
    z1_s16(n,705) = std_dev;
    z1_s16(n,706) = average;
    z1_s16(n,707) = median_value; 
end

%z1_s19
for n= 1:length(z1_s19(:,1))
    [maximo,latency_max] = max(z1_s19(n,:));
    [minimo,latency_min] = min(z1_s19(n,:));
    std_dev = std(z1_s19(n,:));
    average = mean(z1_s19(n,:));
    median_value = median(z1_s19(n,:));
    
    z1_s19(n,702) = maximo;
    z1_s19(n,703) = latency_max;
    z1_s19(n,704) = minimo;
    z1_s19(n,704) = latency_min;
    z1_s19(n,705) = std_dev;
    z1_s19(n,706) = average;
    z1_s19(n,707) = median_value; 
end

%z1_s20
for n= 1:length(z1_s20(:,1))
    [maximo,latency_max] = max(z1_s20(n,:));
    [minimo,latency_min] = min(z1_s20(n,:));
    std_dev = std(z1_s20(n,:));
    average = mean(z1_s20(n,:));
    median_value = median(z1_s20(n,:));
    
    z1_s20(n,702) = maximo;
    z1_s20(n,703) = latency_max;
    z1_s20(n,704) = minimo;
    z1_s20(n,704) = latency_min;
    z1_s20(n,705) = std_dev;
    z1_s20(n,706) = average;
    z1_s20(n,707) = median_value; 
end

%z1_s21
for n= 1:length(z1_s21(:,1))
    [maximo,latency_max] = max(z1_s21(n,:));
    [minimo,latency_min] = min(z1_s21(n,:));
    std_dev = std(z1_s21(n,:));
    average = mean(z1_s21(n,:));
    median_value = median(z1_s21(n,:));
    
    z1_s21(n,702) = maximo;
    z1_s21(n,703) = latency_max;
    z1_s21(n,704) = minimo;
    z1_s21(n,704) = latency_min;
    z1_s21(n,705) = std_dev;
    z1_s21(n,706) = average;
    z1_s21(n,707) = median_value; 
end

%z1_s24
for n= 1:length(z1_s24(:,1))
    [maximo,latency_max] = max(z1_s24(n,:));
    [minimo,latency_min] = min(z1_s24(n,:));
    std_dev = std(z1_s24(n,:));
    average = mean(z1_s24(n,:));
    median_value = median(z1_s24(n,:));
    
    z1_s24(n,702) = maximo;
    z1_s24(n,703) = latency_max;
    z1_s24(n,704) = minimo;
    z1_s24(n,704) = latency_min;
    z1_s24(n,705) = std_dev;
    z1_s24(n,706) = average;
    z1_s24(n,707) = median_value; 
end

%z1_s29
for n= 1:length(z1_s29(:,1))
    [maximo,latency_max] = max(z1_s29(n,:));
    [minimo,latency_min] = min(z1_s29(n,:));
    std_dev = std(z1_s29(n,:));
    average = mean(z1_s29(n,:));
    median_value = median(z1_s29(n,:));
    
    z1_s29(n,702) = maximo;
    z1_s29(n,703) = latency_max;
    z1_s29(n,704) = minimo;
    z1_s29(n,704) = latency_min;
    z1_s29(n,705) = std_dev;
    z1_s29(n,706) = average;
    z1_s29(n,707) = median_value; 
end

%z1_s31
for n= 1:length(z1_s31(:,1))
    [maximo,latency_max] = max(z1_s31(n,:));
    [minimo,latency_min] = min(z1_s31(n,:));
    std_dev = std(z1_s31(n,:));
    average = mean(z1_s31(n,:));
    median_value = median(z1_s31(n,:));
    
    z1_s31(n,702) = maximo;
    z1_s31(n,703) = latency_max;
    z1_s31(n,704) = minimo;
    z1_s31(n,704) = latency_min;
    z1_s31(n,705) = std_dev;
    z1_s31(n,706) = average;
    z1_s31(n,707) = median_value; 
end

%z1_s35
for n= 1:length(z1_s35(:,1))
    [maximo,latency_max] = max(z1_s35(n,:));
    [minimo,latency_min] = min(z1_s35(n,:));
    std_dev = std(z1_s35(n,:));
    average = mean(z1_s35(n,:));
    median_value = median(z1_s35(n,:));
    
    z1_s35(n,702) = maximo;
    z1_s35(n,703) = latency_max;
    z1_s35(n,704) = minimo;
    z1_s35(n,704) = latency_min;
    z1_s35(n,705) = std_dev;
    z1_s35(n,706) = average;
    z1_s35(n,707) = median_value; 
end

%z1_s36
for n= 1:length(z1_s36(:,1))
    [maximo,latency_max] = max(z1_s36(n,:));
    [minimo,latency_min] = min(z1_s36(n,:));
    std_dev = std(z1_s36(n,:));
    average = mean(z1_s36(n,:));
    median_value = median(z1_s36(n,:));
    
    z1_s36(n,702) = maximo;
    z1_s36(n,703) = latency_max;
    z1_s36(n,704) = minimo;
    z1_s36(n,704) = latency_min;
    z1_s36(n,705) = std_dev;
    z1_s36(n,706) = average;
    z1_s36(n,707) = median_value; 
end

%latency for individuals trials z2

%z2_s1
for n= 1:length(z2_s1(:,1))
    [maximo,latency_max] = max(z2_s1(n,:));
    [minimo,latency_min] = min(z2_s1(n,:));
    std_dev = std(z2_s1(n,:));
    average = mean(z2_s1(n,:));
    median_value = median(z2_s1(n,:));
    
    z2_s1(n,702) = maximo;
    z2_s1(n,703) = latency_max;
    z2_s1(n,704) = minimo;
    z2_s1(n,704) = latency_min;
    z2_s1(n,705) = std_dev;
    z2_s1(n,706) = average;
    z2_s1(n,707) = median_value; 
end

%z2_s3
for n= 1:length(z2_s3(:,1))
    [maximo,latency_max] = max(z2_s3(n,:));
    [minimo,latency_min] = min(z2_s3(n,:));
    std_dev = std(z2_s3(n,:));
    average = mean(z2_s3(n,:));
    median_value = median(z2_s3(n,:));
    
    z2_s3(n,702) = maximo;
    z2_s3(n,703) = latency_max;
    z2_s3(n,704) = minimo;
    z2_s3(n,704) = latency_min;
    z2_s3(n,705) = std_dev;
    z2_s3(n,706) = average;
    z2_s3(n,707) = median_value; 
end

%z2_s4
for n= 1:length(z2_s4(:,1))
    [maximo,latency_max] = max(z2_s4(n,:));
    [minimo,latency_min] = min(z2_s4(n,:));
    std_dev = std(z2_s4(n,:));
    average = mean(z2_s4(n,:));
    median_value = median(z2_s4(n,:));
    
    z2_s4(n,702) = maximo;
    z2_s4(n,703) = latency_max;
    z2_s4(n,704) = minimo;
    z2_s4(n,704) = latency_min;
    z2_s4(n,705) = std_dev;
    z2_s4(n,706) = average;
    z2_s4(n,707) = median_value; 
end

%z2_s5
for n= 1:length(z2_s5(:,1))
    [maximo,latency_max] = max(z2_s5(n,:));
    [minimo,latency_min] = min(z2_s5(n,:));
    std_dev = std(z2_s5(n,:));
    average = mean(z2_s5(n,:));
    median_value = median(z2_s5(n,:));
    
    z2_s5(n,702) = maximo;
    z2_s5(n,703) = latency_max;
    z2_s5(n,704) = minimo;
    z2_s5(n,704) = latency_min;
    z2_s5(n,705) = std_dev;
    z2_s5(n,706) = average;
    z2_s5(n,707) = median_value; 
end

%z2_s12
for n= 1:length(z2_s12(:,1))
    [maximo,latency_max] = max(z2_s12(n,:));
    [minimo,latency_min] = min(z2_s12(n,:));
    std_dev = std(z2_s12(n,:));
    average = mean(z2_s12(n,:));
    median_value = median(z2_s12(n,:));
    
    z2_s12(n,702) = maximo;
    z2_s12(n,703) = latency_max;
    z2_s12(n,704) = minimo;
    z2_s12(n,704) = latency_min;
    z2_s12(n,705) = std_dev;
    z2_s12(n,706) = average;
    z2_s12(n,707) = median_value; 
end

%z2_s13
for n= 1:length(z2_s13(:,1))
    [maximo,latency_max] = max(z2_s13(n,:));
    [minimo,latency_min] = min(z2_s13(n,:));
    std_dev = std(z2_s13(n,:));
    average = mean(z2_s13(n,:));
    median_value = median(z2_s13(n,:));
    
    z2_s13(n,702) = maximo;
    z2_s13(n,703) = latency_max;
    z2_s13(n,704) = minimo;
    z2_s13(n,704) = latency_min;
    z2_s13(n,705) = std_dev;
    z2_s13(n,706) = average;
    z2_s13(n,707) = median_value; 
end

%z2_s14
for n= 1:length(z2_s14(:,1))
    [maximo,latency_max] = max(z2_s14(n,:));
    [minimo,latency_min] = min(z2_s14(n,:));
    std_dev = std(z2_s14(n,:));
    average = mean(z2_s14(n,:));
    median_value = median(z2_s14(n,:));
    
    z2_s14(n,702) = maximo;
    z2_s14(n,703) = latency_max;
    z2_s14(n,704) = minimo;
    z2_s14(n,704) = latency_min;
    z2_s14(n,705) = std_dev;
    z2_s14(n,706) = average;
    z2_s14(n,707) = median_value; 
end

%z2_s15
for n= 1:length(z2_s15(:,1))
    [maximo,latency_max] = max(z2_s15(n,:));
    [minimo,latency_min] = min(z2_s15(n,:));
    std_dev = std(z2_s15(n,:));
    average = mean(z2_s15(n,:));
    median_value = median(z2_s15(n,:));
    
    z2_s15(n,702) = maximo;
    z2_s15(n,703) = latency_max;
    z2_s15(n,704) = minimo;
    z2_s15(n,704) = latency_min;
    z2_s15(n,705) = std_dev;
    z2_s15(n,706) = average;
    z2_s15(n,707) = median_value; 
end
 
%z2_s16
for n= 1:length(z2_s16(:,1))
    [maximo,latency_max] = max(z2_s16(n,:));
    [minimo,latency_min] = min(z2_s16(n,:));
    std_dev = std(z2_s16(n,:));
    average = mean(z2_s16(n,:));
    median_value = median(z2_s16(n,:));
    
    z2_s16(n,702) = maximo;
    z2_s16(n,703) = latency_max;
    z2_s16(n,704) = minimo;
    z2_s16(n,704) = latency_min;
    z2_s16(n,705) = std_dev;
    z2_s16(n,706) = average;
    z2_s16(n,707) = median_value; 
end

%z2_s19
for n= 1:length(z2_s19(:,1))
    [maximo,latency_max] = max(z2_s19(n,:));
    [minimo,latency_min] = min(z2_s19(n,:));
    std_dev = std(z2_s19(n,:));
    average = mean(z2_s19(n,:));
    median_value = median(z2_s19(n,:));
    
    z2_s19(n,702) = maximo;
    z2_s19(n,703) = latency_max;
    z2_s19(n,704) = minimo;
    z2_s19(n,704) = latency_min;
    z2_s19(n,705) = std_dev;
    z2_s19(n,706) = average;
    z2_s19(n,707) = median_value; 
end

%z2_s20
for n= 1:length(z2_s20(:,1))
    [maximo,latency_max] = max(z2_s20(n,:));
    [minimo,latency_min] = min(z2_s20(n,:));
    std_dev = std(z2_s20(n,:));
    average = mean(z2_s20(n,:));
    median_value = median(z2_s20(n,:));
    
    z2_s20(n,702) = maximo;
    z2_s20(n,703) = latency_max;
    z2_s20(n,704) = minimo;
    z2_s20(n,704) = latency_min;
    z2_s20(n,705) = std_dev;
    z2_s20(n,706) = average;
    z2_s20(n,707) = median_value; 
end

%z2_s21
for n= 1:length(z2_s21(:,1))
    [maximo,latency_max] = max(z2_s21(n,:));
    [minimo,latency_min] = min(z2_s21(n,:));
    std_dev = std(z2_s21(n,:));
    average = mean(z2_s21(n,:));
    median_value = median(z2_s21(n,:));
    
    z2_s21(n,702) = maximo;
    z2_s21(n,703) = latency_max;
    z2_s21(n,704) = minimo;
    z2_s21(n,704) = latency_min;
    z2_s21(n,705) = std_dev;
    z2_s21(n,706) = average;
    z2_s21(n,707) = median_value; 
end

%z2_s24
for n= 1:length(z2_s24(:,1))
    [maximo,latency_max] = max(z2_s24(n,:));
    [minimo,latency_min] = min(z2_s24(n,:));
    std_dev = std(z2_s24(n,:));
    average = mean(z2_s24(n,:));
    median_value = median(z2_s24(n,:));
    
    z2_s24(n,702) = maximo;
    z2_s24(n,703) = latency_max;
    z2_s24(n,704) = minimo;
    z2_s24(n,704) = latency_min;
    z2_s24(n,705) = std_dev;
    z2_s24(n,706) = average;
    z2_s24(n,707) = median_value; 
end

%z2_s29
for n= 1:length(z2_s29(:,1))
    [maximo,latency_max] = max(z2_s29(n,:));
    [minimo,latency_min] = min(z2_s29(n,:));
    std_dev = std(z2_s29(n,:));
    average = mean(z2_s29(n,:));
    median_value = median(z2_s29(n,:));
    
    z2_s29(n,702) = maximo;
    z2_s29(n,703) = latency_max;
    z2_s29(n,704) = minimo;
    z2_s29(n,704) = latency_min;
    z2_s29(n,705) = std_dev;
    z2_s29(n,706) = average;
    z2_s29(n,707) = median_value; 
end

%z2_s31
for n= 1:length(z2_s31(:,1))
    [maximo,latency_max] = max(z2_s31(n,:));
    [minimo,latency_min] = min(z2_s31(n,:));
    std_dev = std(z2_s31(n,:));
    average = mean(z2_s31(n,:));
    median_value = median(z2_s31(n,:));
    
    z2_s31(n,702) = maximo;
    z2_s31(n,703) = latency_max;
    z2_s31(n,704) = minimo;
    z2_s31(n,704) = latency_min;
    z2_s31(n,705) = std_dev;
    z2_s31(n,706) = average;
    z2_s31(n,707) = median_value; 
end

%z2_s35
for n= 1:length(z2_s35(:,1))
    [maximo,latency_max] = max(z2_s35(n,:));
    [minimo,latency_min] = min(z2_s35(n,:));
    std_dev = std(z2_s35(n,:));
    average = mean(z2_s35(n,:));
    median_value = median(z2_s35(n,:));
    
    z2_s35(n,702) = maximo;
    z2_s35(n,703) = latency_max;
    z2_s35(n,704) = minimo;
    z2_s35(n,704) = latency_min;
    z2_s35(n,705) = std_dev;
    z2_s35(n,706) = average;
    z2_s35(n,707) = median_value; 
end

%z2_s36
for n= 1:length(z2_s36(:,1))
    [maximo,latency_max] = max(z2_s36(n,:));
    [minimo,latency_min] = min(z2_s36(n,:));
    std_dev = std(z2_s36(n,:));
    average = mean(z2_s36(n,:));
    median_value = median(z2_s36(n,:));
    
    z2_s36(n,702) = maximo;
    z2_s36(n,703) = latency_max;
    z2_s36(n,704) = minimo;
    z2_s36(n,704) = latency_min;
    z2_s36(n,705) = std_dev;
    z2_s36(n,706) = average;
    z2_s36(n,707) = median_value; 
end

clear latency_max latency_min maximo median_value average minimo n std_dev

%%% creating latency z1_latency

z1_latency_value = [mean(z1_s1(:,703)),mean(z1_s3(:,703)),mean(z1_s4(:,703)),mean(z1_s5(:,703)),mean(z1_s12(:,703)),mean(z1_s13(:,703)),mean(z1_s14(:,703)),mean(z1_s15(:,703)),mean(z1_s16(:,703)),mean(z1_s19(:,703)),mean(z1_s20(:,703)),mean(z1_s21(:,703)),mean(z1_s4(:,703)),mean(z1_s29(:,703)),mean(z1_s31(:,703)),mean(z1_s35(:,703)),mean(z1_s36(:,703))]';
z2_latency_value = [mean(z2_s1(:,703)),mean(z2_s3(:,703)),mean(z2_s4(:,703)),mean(z2_s5(:,703)),mean(z2_s12(:,703)),mean(z2_s13(:,703)),mean(z2_s14(:,703)),mean(z2_s15(:,703)),mean(z2_s16(:,703)),mean(z2_s19(:,703)),mean(z2_s20(:,703)),mean(z2_s21(:,703)),mean(z2_s4(:,703)),mean(z2_s29(:,703)),mean(z2_s31(:,703)),mean(z2_s35(:,703)),mean(z2_s36(:,703))]';

%% ratios

for n= 1:17
    
    z1_z2_amplitude_ratio(n) = z1_max_value(n) / z2_max_value(n);
    z1_z2_std_ratio(n) = z1_std_value(n)/z2_std_value(n);
    z1_z2_latency_ratio(n) = z1_latency_value(n) / z2_latency_value(n);
end
    

    z1_z2_amplitude_ratio = z1_z2_amplitude_ratio';
    z1_z2_std_ratio = z1_z2_std_ratio';
    z1_z2_latency_ratio = z1_z2_latency_ratio';


%% PLOTTING HIST LATENCY S1

figure()
nbins=10;
histogram(z1_s1(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on 
histogram(z1_s3(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s5(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s12(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s13(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s14(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s15(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s16(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s19(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s20(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s21(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s24(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s29(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s31(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s35(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z1_s36(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
%legend()
legend('Subject 1','Subject 3','Subject 5','Subject 12','Subject 13','Subject 14',...
    'Subject 15','Subject 16','Subject 19','Subject 20','Subject 21','Subject 24',...
    'Subject 29','Subject 31','Subject 35','Subject 36')
xlim([200 500]);
xlabel('Latency Stimuli 1 [ms]') 
title('Histogram Latency Stimuli 1')
grid ON
%% PLOTTING HIST LATENCY S2

figure()
nbins=10;
%% 
histogram(z2_s1(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on 
histogram(z2_s3(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s5(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s12(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s13(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s14(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s15(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s16(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s19(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s20(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s21(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s24(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s29(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s31(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s35(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
hold on
histogram(z2_s36(:,703),nbins,'DisplayStyle','stairs','LineWidth',2.0)
%legend()
legend('Subject 1','Subject 3','Subject 5','Subject 12','Subject 13','Subject 14',...
    'Subject 15','Subject 16','Subject 19','Subject 20','Subject 21','Subject 24',...
    'Subject 29','Subject 31','Subject 35','Subject 36')
%xlim([200 500]);
xlabel('Latency Stimuli 2 [ms]') 
title('Histogram Latency Stimuli 2')
grid ON

%% average responses plot

figure()

subplot(1,2,1)

plot(z1_mean_vector(1,:));
hold on
plot(z1_mean_vector(2,:));
hold on
plot(z1_mean_vector(3,:));
hold on
plot(z1_mean_vector(4,:));
hold on
plot(z1_mean_vector(5,:));
hold on
plot(z1_mean_vector(6,:));
hold on
plot(z1_mean_vector(7,:));
hold on
plot(z1_mean_vector(8,:));
hold on
plot(z1_mean_vector(9,:));
hold on
plot(z1_mean_vector(10,:));
hold on
plot(z1_mean_vector(11,:));
hold on
plot(z1_mean_vector(12,:));
hold on
plot(z1_mean_vector(13,:));
hold on
plot(z1_mean_vector(14,:));
hold on
plot(z1_mean_vector(15,:));
hold on
plot(z1_mean_vector(16,:));
hold on
plot(z1_mean_vector(17,:));

legend('Subject 1','Subject 3','Subject 4','Subject 5','Subject 12','Subject 13','Subject 14',...
    'Subject 15','Subject 16','Subject 19','Subject 20','Subject 21','Subject 24',...
    'Subject 29','Subject 31','Subject 35','Subject 36')
ylabel('Amplitude [uV]')
xlabel('Latency [ms]')
ylim([-20 20]);
title('Average Response S1')
grid ON

subplot(1,2,2)
plot(z2_mean_vector(1,:));
hold on
plot(z2_mean_vector(2,:));
hold on
plot(z2_mean_vector(3,:));
hold on
plot(z2_mean_vector(4,:));
hold on
plot(z2_mean_vector(5,:));
hold on
plot(z2_mean_vector(6,:));
hold on
plot(z2_mean_vector(7,:));
hold on
plot(z2_mean_vector(8,:));
hold on
plot(z2_mean_vector(9,:));
hold on
plot(z2_mean_vector(10,:));
hold on
plot(z2_mean_vector(11,:));
hold on
plot(z2_mean_vector(12,:));
hold on
plot(z2_mean_vector(13,:));
hold on
plot(z2_mean_vector(14,:));
hold on
plot(z2_mean_vector(15,:));
hold on
plot(z2_mean_vector(16,:));
hold on
plot(z2_mean_vector(17,:));

legend('Subject 1','Subject 3','Subject 4','Subject 5','Subject 12','Subject 13','Subject 14',...
    'Subject 15','Subject 16','Subject 19','Subject 20','Subject 21','Subject 24',...
    'Subject 29','Subject 31','Subject 35','Subject 36')
ylabel('Amplitude [uV]')
xlabel('Latency [ms]')
ylim([-20 20]);
title('Average Response S2')
grid ON

%% average max amplitude by subject

figure()

plot(z1_max_value,'--ro')
hold on
plot(z2_max_value,'--bo')

legend('Mean Max Amplitude S1','Mean Max Amplitude S2')
grid ON
ylabel('Amplitude [uV]')
xticklabels({'s01','s03','s04','s05','s12','s13','s14','s15','s16','s19','s20','s21','s24','s29','s31','s35','s36'})
xlabel('Subjects')
xticks([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]);


%% average latency by subject

figure()

plot(z1_std_value,'--ro')
hold on
plot(z2_std_value,'--bo')

legend('Mean Max Latency S1','Mean Max Latency S2')
grid ON
ylabel('Amplitude [uV]')
xticklabels({'s01','s03','s04','s05','s12','s13','s14','s15','s16','s19','s20','s21','s24','s29','s31','s35','s36'})
xlabel('Subjects')
xticks([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]);

%% histogram latency normal s16 and crazy s19

figure()

subplot(1,2,1)
nbins=20;
histogram(z1_s16(:,703),nbins,'LineWidth',2.0)
hold on 
histogram(z2_s16(:,703),nbins,'LineWidth',2.0)
legend('Stimuli 1','Stimuli 2')
xlabel('Latency [ms]') 
title('Histogram Latency - Subject 16')
grid ON

subplot(1,2,2)
histogram(z1_s19(:,703),nbins,'LineWidth',2.0)
hold on 
histogram(z2_s19(:,703),nbins,'LineWidth',2.0)
legend('Stimuli 1','Stimuli 2')
xlabel('Latency [ms]') 
title('Histogram Latency - Subject 19')
grid ON

%% boxplot 

figure()

boxplot([z1_s1(1:115,702),z1_s3(1:115,702),z1_s4(1:115,702),z1_s5(1:115,702),z1_s12(1:115,702),z1_s13(1:115,702),...
    z1_s14(1:115,702),z1_s15(1:115,702),z1_s16(1:115,702),z1_s19(1:115,702),z1_s20(1:115,702),z1_s21(1:115,702),z1_s24(1:115,702),...
    z1_s29(1:115,702),z1_s31(1:115,702),z1_s35(1:115,702),z1_s36(1:115,702)])

grid ON
ylabel('Amplitude [uV]')
xticklabels({'s01','s03','s04','s05','s12','s13','s14','s15','s16','s19','s20','s21','s24','s29','s31','s35','s36'})
xlabel('Subjects')
xticks([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]);
title('Boxplot Stimuli 1 Max Responses')

%% k means clustering

%try 1

%array for kmeans
clear stats_stimuli6;


%try 6
stats_stimuli6(:,1) = z1_z2_amplitude_ratio;
%max values s2
stats_stimuli6(:,2) = z1_z2_latency_ratio;

[idx6,C] = kmeans(stats_stimuli6,2,'Distance','cityblock','Replicates',2);
stats_stimuli6(:,3) = idx6;
stats_stimuli6(:,4) = [1,3,4,5,12,13,14,15,16,19,20,21,24,29,31,35,36]';

clear n nbins subjects



%%%plot

labels = ["s01",'s03','s04','s05','s12','s13','s14','s15','s16','s19','s20','s21','s24','s29','s31','s35','s36']';

figure
gscatter(stats_stimuli6(:,1),stats_stimuli6(:,2),stats_stimuli6(:,3),'rb','*',8)

dx = 0.011; dy = 0.011; % displacement so the text does not overlay the data points
text(stats_stimuli6(:,1)+dx, stats_stimuli6(:,2)+dy, labels,'Fontsize',12,'HorizontalAlignment','right');

legend('Normal','Mental Illness','northeastoutside')
grid ON
xlabel('S1/S2 Max Amplitude Ratio')
ylabel('S1/S2 Latency Ratio') 

title('Cluster classification')
