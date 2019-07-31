.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/XYConfigInner
.super com/product/android/business/config/Configuration

.method static <clinit>()V
iconst_1
putstatic com/nd/android/u/cloud/XYConfigInner/DEBUG Z
iconst_1
putstatic com/nd/android/u/cloud/XYConfigInner/LOGIN_TYPE I
ldc "https://testoa.99.com"
putstatic com/nd/android/u/cloud/XYConfigInner/OASERVICEURL Ljava/lang/String;
ldc "https://testoa.99.com"
putstatic com/nd/android/u/cloud/XYConfigInner/OAHTTPSSERVICEURL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/XYConfigInner/OASERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/api/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigInner/OAPSERVICEURL Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/XYConfigInner/OAHTTPSSERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/api/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigInner/OAPSERVICEURL_HTTPS Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/XYConfigInner/OASERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/sfs/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/controller/ChatConfiguration/SHARE_FILE_SERVICE_URL Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
ldc "lbs91.jmu.cn"
putfield com/nd/android/u/controller/ChatConfiguration/LBS_URL Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
sipush 4502
putfield com/nd/android/u/controller/ChatConfiguration/LBS_PORT I
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
ldc "121.207.247.157"
putfield com/nd/android/u/controller/ChatConfiguration/LBS_IP Ljava/lang/String;
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
sipush 7778
putfield com/nd/android/u/controller/ChatConfiguration/LBS_IP_PORT I
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
ldc "https://psp.91.com"
putfield com/nd/android/u/controller/ChatConfiguration/PUBLIC_NUMBER_URL Ljava/lang/String;
ldc "https://91u.91.com/edua/v.php"
putstatic com/nd/android/u/cloud/XYConfigInner/HELP_UPDATE_URL Ljava/lang/String;
ldc "https://edu.91.com/bbs/forum.php?mod=forumdisplay&fid=42"
putstatic com/nd/android/u/cloud/XYConfigInner/FEED_BACK_URL Ljava/lang/String;
ldc "https://oa91.jmu.cn/"
putstatic com/nd/android/u/cloud/XYConfigInner/OFFICIALWEBSITE_URL Ljava/lang/String;
ldc "https://reg.uap.91.com/uaplogin/regemail?appid=113&returnurl=https://reg.uap.91.com/uaplogin/ucenter"
putstatic com/nd/android/u/cloud/XYConfigInner/REGISTER_URL Ljava/lang/String;
ldc "https://reg.uap.91.com/uaplogin/forget?appid=113&returnurl=https://reg.uap.91.com/uaplogin/ucenter"
putstatic com/nd/android/u/cloud/XYConfigInner/GETPASS_URL Ljava/lang/String;
ldc "https://192.168.19.186/"
putstatic com/nd/android/u/cloud/XYConfigInner/ALBUM_SERVICE_URL Ljava/lang/String;
ldc "https://testndt.99.com/"
putstatic com/nd/android/u/cloud/XYConfigInner/TWEET_SERVER_URL Ljava/lang/String;
ldc "https://xymission.99.com/"
putstatic com/nd/android/u/cloud/XYConfigInner/FLOWER_SERVER_URL Ljava/lang/String;
ldc "https://testoa.99.com/"
putstatic com/nd/android/u/cloud/XYConfigInner/OAP_NEW_SERVER_URL Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYConfigInner/OAP_NEW_SERVER_URL Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigInner/OAP_BLACKLIST_SERVER_URL Ljava/lang/String;
getstatic com/nd/android/u/cloud/XYConfigInner/OAP_NEW_SERVER_URL Ljava/lang/String;
putstatic com/nd/android/u/cloud/XYConfigInner/OAP_LT_SERVER_URL Ljava/lang/String;
ldc "jmu_android"
putstatic com/nd/android/u/cloud/XYConfigInner/MYPRODUCT Ljava/lang/String;
sipush 273
putstatic com/nd/android/u/cloud/XYConfigInner/OAP_APPID I
ldc "jmedu"
putstatic com/nd/android/u/cloud/XYConfigInner/ALBUMAPPNAME Ljava/lang/String;
ldc "1273"
putstatic com/nd/android/u/cloud/XYConfigInner/SUGGESTPRODID Ljava/lang/String;
ldc "91\u4e91\u529e\u516c\uff08android\uff09"
putstatic com/nd/android/u/cloud/XYConfigInner/SUGGESTPRODNAME Ljava/lang/String;
bipush 11
putstatic com/nd/android/u/cloud/XYConfigInner/MYAPPID I
ldc "99999"
putstatic com/nd/android/u/cloud/XYConfigInner/BIRTHDAYREMINDCODE Ljava/lang/String;
ldc "9170"
putstatic com/nd/android/u/cloud/XYConfigInner/PMSAPPCODE Ljava/lang/String;
sipush 9121
putstatic com/nd/android/u/cloud/XYConfigInner/PMSAPPID I
ldc_w 100003
putstatic com/nd/android/u/cloud/XYConfigInner/CHINAPARTNERID I
ldc "chinesePartner"
putstatic com/nd/android/u/cloud/XYConfigInner/CHINAPARTNERCODE Ljava/lang/String;
sipush 1067
putstatic com/nd/android/u/cloud/XYConfigInner/SECRETLOVEAPPID I
ldc "1001"
putstatic com/nd/android/u/cloud/XYConfigInner/SECRETLOVECODE Ljava/lang/String;
sipush 1064
putstatic com/nd/android/u/cloud/XYConfigInner/TASKAPPID I
ldc "4512"
putstatic com/nd/android/u/cloud/XYConfigInner/WEBOCODE Ljava/lang/String;
ldc "4513"
putstatic com/nd/android/u/cloud/XYConfigInner/FLOWERCODE Ljava/lang/String;
ldc "4514"
putstatic com/nd/android/u/cloud/XYConfigInner/PAIHANGCODE Ljava/lang/String;
ldc "1001"
putstatic com/nd/android/u/cloud/XYConfigInner/PRESEND_CODE Ljava/lang/String;
ldc "9180"
putstatic com/nd/android/u/cloud/XYConfigInner/LOTTERYCODE Ljava/lang/String;
ldc "1110"
putstatic com/nd/android/u/cloud/XYConfigInner/GIFTGIVERCODE Ljava/lang/String;
ldc "jmedu/download"
putstatic com/nd/android/u/cloud/XYConfigInner/DOWNLOAD_PATH Ljava/lang/String;
ldc "jmedu"
putstatic com/nd/android/u/cloud/XYConfigInner/PATH Ljava/lang/String;
ldc "com.nd.android.u.oap.jmedu.action.ACTION_KEEPALIVE"
putstatic com/nd/android/u/cloud/XYConfigInner/ACTION_KEEPALIVE Ljava/lang/String;
bipush 110
putstatic com/nd/android/u/cloud/XYConfigInner/MESSAGELENG I
ldc "5045A92549A1111C7E00949F48173018"
putstatic com/nd/android/u/cloud/XYConfigInner/WEIBO_APP_KEY Ljava/lang/String;
ldc "1F11C58E974FBF7C54CE3F9E0484E6D7"
putstatic com/nd/android/u/cloud/XYConfigInner/WEIBO_APP_SECRET Ljava/lang/String;
ldc "3807443536"
putstatic com/nd/android/u/cloud/XYConfigInner/WEIBO_SINA_API_KEY Ljava/lang/String;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
putstatic com/nd/android/u/cloud/XYConfigInner/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
ldc_w 96423
putstatic com/nd/android/u/cloud/XYConfigInner/DEFAULTUNITID I
ldc_w 2130839718
putstatic com/nd/android/u/cloud/XYConfigInner/NOTIFICATION_ICON I
ldc_w 2130839796
putstatic com/nd/android/u/cloud/XYConfigInner/DEFAULTFACEIMAGE I
ldc "jmu"
putstatic com/nd/android/u/cloud/XYConfigInner/CLOUNDID Ljava/lang/String;
ldc "https://testoa.99.com/v2/"
putstatic com/nd/android/u/cloud/XYConfigInner/V2_API_SERVICE_URL Ljava/lang/String;
ldc "https://testoa.99.com/v2/passport/api/"
putstatic com/nd/android/u/cloud/XYConfigInner/LOGIN_API_SERVICE_URL Ljava/lang/String;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/business/config/Configuration/<init>()V
return
.limit locals 1
.limit stack 1
.end method
