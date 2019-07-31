.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/Weather
.super java/lang/Object
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "SimpleDateFormat" 
.end annotation
.inner class static final inner com/android/u/weibo/weibo/utils/Weather$1

.field private static final 'CLOUDY' I = 2


.field private static final 'DUST' I = 5


.field public static final 'FUZHOU_CITY_CODE' Ljava/lang/String; = "101230101"

.field private static final 'GET_CITY_WEATHER' Ljava/lang/String; = "getcityweather"

.field private static final 'IMAGE_ID_WEATHER' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"

.field private static final 'INTERVAL' J = 7200L


.field private static final 'NA' I = 0


.field private static final 'ONE_DAY' J = 86400L


.field private static final 'OTHER_TOOLS' Ljava/lang/String; = "othertools"

.field private static final 'PREFS_NAME' Ljava/lang/String; = "weather_info"

.field private static final 'RAINY' I = 3


.field private static final 'SNOW' I = 4


.field private static final 'SUNNY' I = 1


.field private static final 'WEATHER_ICO_KEY' [Ljava/lang/String;

.field private static final 'WEATHER_URL' Ljava/lang/String; = "http://apiu.weather.rj.99.com/"

.field private static 'sWeather' Lcom/android/u/weibo/weibo/utils/Weather;

.field private 'cityCode' Ljava/lang/String;

.field private 'forecastTemp' Ljava/lang/String;

.field private 'forecastWeather' Ljava/lang/String;

.field private 'nowImgId' I

.field private 'nowTemp' Ljava/lang/String;

.field private 'nowTime' Ljava/lang/String;

.field private 'nowWeather' Ljava/lang/String;

.field private 'sourceContent' Ljava/lang/String;

.field private 'sunrise' Ljava/lang/String;

.field private 'sunset' Ljava/lang/String;

.method static <clinit>()V
bipush 37
anewarray java/lang/String
dup
iconst_0
ldc "\u6674"
aastore
dup
iconst_1
ldc "\u591a\u4e91"
aastore
dup
iconst_2
ldc "\u9634"
aastore
dup
iconst_3
ldc "\u9635\u96e8"
aastore
dup
iconst_4
ldc "\u96f7\u9635\u96e8"
aastore
dup
iconst_5
ldc "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"
aastore
dup
bipush 6
ldc "\u96e8\u5939\u96ea"
aastore
dup
bipush 7
ldc "\u5c0f\u96e8"
aastore
dup
bipush 8
ldc "\u4e2d\u96e8"
aastore
dup
bipush 9
ldc "\u5927\u96e8"
aastore
dup
bipush 10
ldc "\u66b4\u96e8"
aastore
dup
bipush 11
ldc "\u5927\u66b4\u96e8"
aastore
dup
bipush 12
ldc "\u7279\u5927\u66b4\u96e8"
aastore
dup
bipush 13
ldc "\u9635\u96ea"
aastore
dup
bipush 14
ldc "\u5c0f\u96ea"
aastore
dup
bipush 15
ldc "\u4e2d\u96ea"
aastore
dup
bipush 16
ldc "\u5927\u96ea"
aastore
dup
bipush 17
ldc "\u66b4\u96ea"
aastore
dup
bipush 18
ldc "\u96fe"
aastore
dup
bipush 19
ldc "\u51bb\u96e8"
aastore
dup
bipush 20
ldc "\u6c99\u5c18\u66b4"
aastore
dup
bipush 21
ldc "\u5c0f\u5230\u4e2d\u96e8"
aastore
dup
bipush 22
ldc "\u4e2d\u5230\u5927\u96e8"
aastore
dup
bipush 23
ldc "\u5927\u5230\u66b4\u96e8"
aastore
dup
bipush 24
ldc "\u66b4\u96e8\u5230\u5927\u66b4\u96e8"
aastore
dup
bipush 25
ldc "\u5927\u66b4\u96e8\u5230\u7279\u5927\u66b4\u96e8"
aastore
dup
bipush 26
ldc "\u5c0f\u5230\u4e2d\u96ea"
aastore
dup
bipush 27
ldc "\u4e2d\u5230\u5927\u96ea"
aastore
dup
bipush 28
ldc "\u5927\u5230\u66b4\u96ea"
aastore
dup
bipush 29
ldc "\u5c0f\u96ea\u5230\u4e2d\u96ea"
aastore
dup
bipush 30
ldc "\u4e2d\u96ea\u5230\u5927\u96ea"
aastore
dup
bipush 31
ldc "\u5927\u96ea\u5230\u66b4\u96ea"
aastore
dup
bipush 32
ldc "\u6d6e\u5c18"
aastore
dup
bipush 33
ldc "\u626c\u6c99"
aastore
dup
bipush 34
ldc "\u5f3a\u6c99\u5c18\u66b4"
aastore
dup
bipush 35
ldc "\u5927\u96fe"
aastore
dup
bipush 36
ldc "\u973e"
aastore
putstatic com/android/u/weibo/weibo/utils/Weather/WEATHER_ICO_KEY [Ljava/lang/String;
new com/android/u/weibo/weibo/utils/Weather$1
dup
invokespecial com/android/u/weibo/weibo/utils/Weather$1/<init>()V
putstatic com/android/u/weibo/weibo/utils/Weather/IMAGE_ID_WEATHER Ljava/util/HashMap;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static getCityCodeFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws org/json/JSONException
.throws org/apache/http/client/ClientProtocolException
.throws java/io/IOException
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 3
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
lload 3
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "city"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "958dabae617e4f68da9bd0c8e20978ad"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "option"
ldc "city"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "jd"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "wd"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "chkcode"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
ldc "http://apiu.weather.rj.99.com/othertools"
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
aload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
sipush 200
if_icmpeq L0
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "citycode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 7
.limit stack 5
.end method

.method private getWeatherCode()I
getstatic com/android/u/weibo/weibo/utils/Weather/IMAGE_ID_WEATHER Ljava/util/HashMap;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowImgId I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
getstatic com/android/u/weibo/weibo/utils/Weather/IMAGE_ID_WEATHER Ljava/util/HashMap;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowImgId I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u96e8"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
iconst_3
ireturn
L2:
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u4e91"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u9634"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
L3:
iconst_2
ireturn
L4:
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u96ea"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
iconst_4
ireturn
L5:
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u6674"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L6
iconst_1
ireturn
L6:
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u5c18"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L7
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u96fe"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L7
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u973e"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L7
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
ldc "\u6c99"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
L7:
iconst_5
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static getWeatherEx(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
.throws org/json/JSONException
.throws org/apache/http/client/ClientProtocolException
.throws java/io/IOException
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 2
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
lload 2
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "now,weather,sun"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "ipqerjkasdf98asf35gh47rj8ej20"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "citycode"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "option"
ldc "now,weather,sun"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "chkcode"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 0
ldc "http://apiu.weather.rj.99.com/getcityweather"
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 0
aload 0
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
sipush 200
if_icmpeq L0
aconst_null
areturn
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/utils/Weather/parser(Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
areturn
.limit locals 6
.limit stack 5
.end method

.method private static getWeatherFromDBByCitycode(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
.throws org/json/JSONException
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getWeatherJsonByCitycode(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
aload 0
invokestatic com/android/u/weibo/weibo/utils/Weather/parser(Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
areturn
.limit locals 2
.limit stack 2
.end method

.method private isDay()Z
.catch java/text/ParseException from L0 to L1 using L2
.catch java/text/ParseException from L3 to L4 using L2
lconst_0
lstore 1
lconst_0
lstore 5
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowTime Ljava/lang/String;
ldc " "
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_0
aaload
astore 9
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/sunset Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
ldc2_w 1000L
ldiv
lstore 3
L1:
lload 3
lstore 1
L3:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/sunrise Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
ldc2_w 1000L
ldiv
lstore 7
L4:
lload 3
lstore 1
lload 7
lstore 3
L5:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
ldc2_w 1000L
ldiv
lstore 5
lload 5
lload 3
lcmp
ifgt L6
lload 5
lload 1
lcmp
ifge L7
L6:
iconst_1
ireturn
L2:
astore 9
aload 9
invokevirtual java/text/ParseException/printStackTrace()V
lload 5
lstore 3
goto L5
L7:
iconst_0
ireturn
.limit locals 10
.limit stack 4
.end method

.method private static parser(Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
.throws org/json/JSONException
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
new com/android/u/weibo/weibo/utils/Weather
dup
invokespecial com/android/u/weibo/weibo/utils/Weather/<init>()V
astore 1
aload 1
aload 0
putfield com/android/u/weibo/weibo/utils/Weather/sourceContent Ljava/lang/String;
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
aload 0
ldc "now"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 2
aload 1
aload 2
ldc "nowweather"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/utils/Weather/setNowWeather(Ljava/lang/String;)V
aload 1
aload 2
ldc "temp"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/utils/Weather/setNowTemp(Ljava/lang/String;)V
aload 1
aload 2
ldc "nowimg"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/weibo/utils/Weather/setNowImgId(I)V
aload 1
aload 2
ldc "sysdate"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/utils/Weather/setNowTime(Ljava/lang/String;)V
aload 0
ldc "weatherinfo"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "weather"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
iconst_1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 2
aload 2
ldc "dayweather"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 2
ldc "nightweather"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 3
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 1
aload 3
invokevirtual com/android/u/weibo/weibo/utils/Weather/setForecastWeather(Ljava/lang/String;)V
L2:
aload 2
ldc "hightemp"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 2
ldc "lowtemp"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u2103"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/utils/Weather/setForecastTemp(Ljava/lang/String;)V
aload 0
ldc "sun"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 0
aload 1
aload 0
ldc "sunrise"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/utils/Weather/setSunrise(Ljava/lang/String;)V
aload 1
aload 0
ldc "sunset"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/utils/Weather/setSunset(Ljava/lang/String;)V
aload 1
areturn
L1:
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u8f6c"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/utils/Weather/setForecastWeather(Ljava/lang/String;)V
goto L2
.limit locals 5
.limit stack 3
.end method

.method public static syncGetWeather(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch org/apache/http/client/ClientProtocolException from L1 to L5 using L2
.catch java/io/IOException from L1 to L5 using L3
.catch org/json/JSONException from L1 to L5 using L4
.catch org/apache/http/client/ClientProtocolException from L5 to L6 using L2
.catch java/io/IOException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
lstore 2
L0:
aload 0
ldc "weather_info"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 4
getstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
ifnonnull L1
aload 4
ldc "last_weather"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
invokestatic com/android/u/weibo/weibo/utils/Weather/parser(Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
putstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
L1:
getstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
ifnull L5
lload 2
getstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
invokevirtual com/android/u/weibo/weibo/utils/Weather/getEpochTime()J
lsub
ldc2_w 7200L
lcmp
ifle L6
L5:
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/utils/Weather/getWeatherEx(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
putstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
getstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
ifnull L6
getstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
getfield com/android/u/weibo/weibo/utils/Weather/sourceContent Ljava/lang/String;
ifnull L6
aload 4
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ldc "last_weather"
getstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
getfield com/android/u/weibo/weibo/utils/Weather/sourceContent Ljava/lang/String;
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L6:
getstatic com/android/u/weibo/weibo/utils/Weather/sWeather Lcom/android/u/weibo/weibo/utils/Weather;
areturn
L2:
astore 0
aload 0
invokevirtual org/apache/http/client/ClientProtocolException/printStackTrace()V
goto L6
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L6
L4:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 5
.limit stack 4
.end method

.method public static syncGetWeather(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/u/weibo/weibo/utils/Weather;
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/apache/http/client/ClientProtocolException from L1 to L5 using L2
.catch org/json/JSONException from L1 to L5 using L3
.catch java/io/IOException from L1 to L5 using L4
.catch org/apache/http/client/ClientProtocolException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch org/apache/http/client/ClientProtocolException from L7 to L8 using L2
.catch org/json/JSONException from L7 to L8 using L3
.catch java/io/IOException from L7 to L8 using L4
.catch org/apache/http/client/ClientProtocolException from L9 to L10 using L2
.catch org/json/JSONException from L9 to L10 using L3
.catch java/io/IOException from L9 to L10 using L4
.catch org/apache/http/client/ClientProtocolException from L10 to L11 using L2
.catch org/json/JSONException from L10 to L11 using L3
.catch java/io/IOException from L10 to L11 using L4
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
L1:
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aconst_null
aconst_null
iconst_1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getCityCode(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
astore 5
L5:
aload 5
astore 4
L6:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
aload 0
ldc "101230101"
iload 3
invokestatic com/android/u/weibo/weibo/utils/Weather/syncGetWeather(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/u/weibo/weibo/utils/Weather;
areturn
L7:
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
aload 2
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getCityCode(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
astore 4
L8:
aload 4
astore 5
L9:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
aload 0
aload 1
aload 2
invokestatic com/android/u/weibo/weibo/utils/Weather/getCityCodeFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L12
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 5
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setCityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L10:
aload 0
aload 5
iload 3
invokestatic com/android/u/weibo/weibo/utils/Weather/syncGetWeather(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/u/weibo/weibo/utils/Weather;
astore 0
L11:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/apache/http/client/ClientProtocolException/printStackTrace()V
aconst_null
areturn
L3:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
L4:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
L12:
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public static syncGetWeather(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/u/weibo/weibo/utils/Weather;
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch org/apache/http/client/ClientProtocolException from L5 to L6 using L2
.catch java/io/IOException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
.catch org/apache/http/client/ClientProtocolException from L7 to L8 using L2
.catch java/io/IOException from L7 to L8 using L3
.catch org/json/JSONException from L7 to L8 using L4
.catch org/apache/http/client/ClientProtocolException from L9 to L10 using L2
.catch java/io/IOException from L9 to L10 using L3
.catch org/json/JSONException from L9 to L10 using L4
.catch org/apache/http/client/ClientProtocolException from L11 to L12 using L2
.catch java/io/IOException from L11 to L12 using L3
.catch org/json/JSONException from L11 to L12 using L4
.catch org/apache/http/client/ClientProtocolException from L13 to L14 using L2
.catch java/io/IOException from L13 to L14 using L3
.catch org/json/JSONException from L13 to L14 using L4
.catch org/apache/http/client/ClientProtocolException from L15 to L16 using L2
.catch java/io/IOException from L15 to L16 using L3
.catch org/json/JSONException from L15 to L16 using L4
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ldiv
lstore 3
aconst_null
astore 6
aconst_null
astore 7
aconst_null
astore 8
aconst_null
astore 5
iload 2
ifeq L17
L0:
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/utils/Weather/getWeatherFromDBByCitycode(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
astore 9
L1:
aload 9
ifnull L6
aload 9
astore 5
aload 9
astore 6
aload 9
astore 7
aload 9
astore 8
L5:
lload 3
aload 9
invokevirtual com/android/u/weibo/weibo/utils/Weather/getEpochTime()J
lsub
ldc2_w 7200L
lcmp
ifle L17
L6:
aload 9
astore 6
aload 9
astore 7
aload 9
astore 8
L7:
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/utils/Weather/getWeatherEx(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
astore 9
L8:
aload 9
astore 5
aload 9
ifnull L17
aload 9
astore 6
aload 9
astore 7
aload 9
astore 8
L9:
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
aload 9
getfield com/android/u/weibo/weibo/utils/Weather/sourceContent Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setWeatherInfo(Ljava/lang/String;Ljava/lang/String;)V
L10:
aload 9
astore 5
L17:
aload 5
astore 9
aload 5
ifnonnull L18
aload 5
astore 6
aload 5
astore 7
aload 5
astore 8
L11:
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/utils/Weather/getWeatherFromDBByCitycode(Landroid/content/Context;Ljava/lang/String;)Lcom/android/u/weibo/weibo/utils/Weather;
astore 1
L12:
aload 1
astore 9
aload 1
ifnull L18
aload 1
astore 6
aload 1
astore 9
aload 1
astore 7
aload 1
astore 8
L13:
lload 3
aload 1
invokevirtual com/android/u/weibo/weibo/utils/Weather/getEpochTime()J
lsub
ldc2_w 86400L
lcmp
ifle L18
L14:
aload 1
astore 6
aload 1
astore 7
aload 1
astore 8
L15:
aload 0
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/deleteWeather()V
L16:
aconst_null
areturn
L2:
astore 0
aload 0
invokevirtual org/apache/http/client/ClientProtocolException/printStackTrace()V
aload 6
astore 9
L18:
aload 9
areturn
L3:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aload 7
astore 9
goto L18
L4:
astore 0
aload 0
invokevirtual org/json/JSONException/printStackTrace()V
aload 8
astore 9
goto L18
.limit locals 10
.limit stack 4
.end method

.method public getCityCode()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/cityCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCoverResourceId()I
getstatic com/android/u/weibo/R$drawable/day_sunny_cover I
istore 1
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
getstatic com/android/u/weibo/R$drawable/xiaoyou_day_sunny_cover I
istore 1
L0:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/getWeatherCode()I
tableswitch 1
L1
L1
L2
L3
L4
default : L5
L5:
getstatic com/android/u/weibo/R$drawable/day_sunny_cover I
istore 1
L6:
iload 1
ireturn
L1:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifne L6
getstatic com/android/u/weibo/R$drawable/night_sunny_cover I
ireturn
L2:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifne L6
getstatic com/android/u/weibo/R$drawable/night_sunny_cover I
ireturn
L3:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifeq L7
getstatic com/android/u/weibo/R$drawable/day_snow_cover I
istore 1
L8:
iload 1
ireturn
L7:
getstatic com/android/u/weibo/R$drawable/night_snow_cover I
istore 1
goto L8
L4:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifeq L9
getstatic com/android/u/weibo/R$drawable/day_dust_cover I
istore 1
L10:
iload 1
ireturn
L9:
getstatic com/android/u/weibo/R$drawable/night_dust_cover I
istore 1
goto L10
.limit locals 2
.limit stack 2
.end method

.method public getEpochTime()J
.catch java/text/ParseException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowTime Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
L0:
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd HH:mm:ss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowTime Ljava/lang/String;
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
invokevirtual java/util/Date/getTime()J
ldc2_w 1000L
ldiv
lstore 1
L1:
lload 1
lreturn
L2:
astore 3
aload 3
invokevirtual java/text/ParseException/printStackTrace()V
L3:
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
ldc2_w 1000L
ldiv
lreturn
.limit locals 4
.limit stack 4
.end method

.method public getForecastTemp()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/forecastTemp Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getForecastWeather()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/forecastWeather Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNowImgId()I
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowImgId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNowTemp()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowTemp Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNowTime()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowTime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNowWeather()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSunrise()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/sunrise Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSunset()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/Weather/sunset Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWeatherResourceId()I
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/getWeatherCode()I
tableswitch 1
L0
L1
L2
L3
L4
default : L5
L5:
getstatic com/android/u/weibo/R$drawable/weather_na I
ireturn
L0:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifeq L6
getstatic com/android/u/weibo/R$drawable/weather_sunny I
ireturn
L6:
getstatic com/android/u/weibo/R$drawable/weather_night I
ireturn
L1:
getstatic com/android/u/weibo/R$drawable/weather_cloudy I
ireturn
L2:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifeq L7
getstatic com/android/u/weibo/R$drawable/weather_rain I
ireturn
L7:
getstatic com/android/u/weibo/R$drawable/weather_rain I
ireturn
L3:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifeq L8
getstatic com/android/u/weibo/R$drawable/weather_snow I
ireturn
L8:
getstatic com/android/u/weibo/R$drawable/weather_snow I
ireturn
L4:
aload 0
invokespecial com/android/u/weibo/weibo/utils/Weather/isDay()Z
ifeq L9
getstatic com/android/u/weibo/R$drawable/weather_day_dust I
ireturn
L9:
getstatic com/android/u/weibo/R$drawable/weather_night_dust I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCityCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/cityCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setForecastTemp(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/forecastTemp Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setForecastWeather(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/forecastWeather Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNowImgId(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/Weather/nowImgId I
return
.limit locals 2
.limit stack 2
.end method

.method public setNowTemp(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/nowTemp Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNowTime(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/nowTime Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNowWeather(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/nowWeather Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSunrise(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/sunrise Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSunset(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/Weather/sunset Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
