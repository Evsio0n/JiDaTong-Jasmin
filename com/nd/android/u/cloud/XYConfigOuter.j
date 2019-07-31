.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/XYConfigOuter
.super com/product/android/business/config/Configuration

.method static <clinit>()V
iconst_0
putstatic com/nd/android/u/cloud/XYConfigOuter/DEBUG Z
iconst_1
putstatic com/nd/android/u/cloud/XYConfigOuter/LOGIN_TYPE I
ldc "https://91u.99.com/edua/v.php"
putstatic com/nd/android/u/cloud/XYConfigOuter/HELP_UPDATE_URL Ljava/lang/String;
ldc "https://edu.99.com/bbs/forum.php?mod=forumdisplay&fid=42"
putstatic com/nd/android/u/cloud/XYConfigOuter/FEED_BACK_URL Ljava/lang/String;
ldc "https://oa99.jmu.cn/"
putstatic com/nd/android/u/cloud/XYConfigOuter/OFFICIALWEBSITE_URL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/XYConfigOuter/OASERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigOuter/OAP_NEW_SERVER_URL Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYConfigOuter/OAP_NEW_SERVER_URL Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigOuter/OAP_BLACKLIST_SERVER_URL Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYConfigOuter/OAP_NEW_SERVER_URL Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigOuter/OAP_LT_SERVER_URL Ljava/lang/String;
bipush 11
putstatic com/nd/android/u/cloud/XYConfigOuter/MYAPPID I
ldc "99999"
putstatic com/nd/android/u/cloud/XYConfigOuter/BIRTHDAYREMINDCODE Ljava/lang/String;
ldc "9170"
putstatic com/nd/android/u/cloud/XYConfigOuter/PMSAPPCODE Ljava/lang/String;
sipush 9121
putstatic com/nd/android/u/cloud/XYConfigOuter/PMSAPPID I
ldc_w 100003
putstatic com/nd/android/u/cloud/XYConfigOuter/CHINAPARTNERID I
ldc "chinesePartner"
putstatic com/nd/android/u/cloud/XYConfigOuter/CHINAPARTNERCODE Ljava/lang/String;
sipush 1067
putstatic com/nd/android/u/cloud/XYConfigOuter/SECRETLOVEAPPID I
ldc "1001"
putstatic com/nd/android/u/cloud/XYConfigOuter/SECRETLOVECODE Ljava/lang/String;
sipush 1064
putstatic com/nd/android/u/cloud/XYConfigOuter/TASKAPPID I
ldc "4512"
putstatic com/nd/android/u/cloud/XYConfigOuter/WEBOCODE Ljava/lang/String;
ldc "4513"
putstatic com/nd/android/u/cloud/XYConfigOuter/FLOWERCODE Ljava/lang/String;
ldc "4514"
putstatic com/nd/android/u/cloud/XYConfigOuter/PAIHANGCODE Ljava/lang/String;
ldc "1001"
putstatic com/nd/android/u/cloud/XYConfigOuter/PRESEND_CODE Ljava/lang/String;
ldc "9180"
putstatic com/nd/android/u/cloud/XYConfigOuter/LOTTERYCODE Ljava/lang/String;
ldc "1110"
putstatic com/nd/android/u/cloud/XYConfigOuter/GIFTGIVERCODE Ljava/lang/String;
bipush 110
putstatic com/nd/android/u/cloud/XYConfigOuter/MESSAGELENG I
ldc "3807443536"
putstatic com/nd/android/u/cloud/XYConfigOuter/WEIBO_SINA_API_KEY Ljava/lang/String;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
putstatic com/nd/android/u/cloud/XYConfigOuter/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
ldc_w 2130839718
putstatic com/nd/android/u/cloud/XYConfigOuter/NOTIFICATION_ICON I
ldc_w 2130839796
putstatic com/nd/android/u/cloud/XYConfigOuter/DEFAULTFACEIMAGE I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/XYConfigOuter/OASERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigOuter/V2_API_SERVICE_URL Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/business/config/Configuration/<init>()V
return
.limit locals 1
.limit stack 1
.end method
