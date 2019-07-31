.bytecode 50.0
.class public synchronized com/product/android/commonInterface/chat/ErpInfo
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'RESULT_CANCEL' I = 14


.field public static final 'RESULT_FAIL' I = 13


.field public static final 'RESULT_SUCCESS' I = 12


.field public static final 'STATUS_ACCEPTED_FINISHED' I = 1


.field public static final 'STATUS_DELAY_ACCPET' I = 5


.field public static final 'STATUS_DELAY_REFUSE' I = 6


.field public static final 'STATUS_DETAIL' I = 3


.field public static final 'STATUS_REFUSE_REDO' I = 2


.field public static final 'STATUS_TOACCEPT_TOFINISH' I = 0


.field public static final 'STATUS_TODELAY' I = 4


.field private static final 'TAG' Ljava/lang/String; = "ErpInfo"

.field public static final 'TYPE_ACCEPTER' I = 1


.field public static final 'TYPE_ALLOCATER' I = 0


.field public static final 'TYPE_COPYTO' I = 2


.field private static final 'serialVersionUID' J = 1L


.field public 'appCode' Ljava/lang/String;

.field public 'appId' I

.field public 'bussinessId' Ljava/lang/String;

.field public 'clickable' Z

.field public 'content' Ljava/lang/String;

.field public 'generateId' Ljava/lang/String;

.field public 'isNeedProject' I

.field public 'level' I

.field public 'projectid' Ljava/lang/String;

.field public 'projectname' Ljava/lang/String;

.field public 'status' I

.field public 'taskId' Ljava/lang/String;

.field public 'tasktime' Ljava/lang/String;

.field public 'tasktitle' Ljava/lang/String;

.field public 'type' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/product/android/commonInterface/chat/ErpInfo/status I
aload 0
iconst_0
putfield com/product/android/commonInterface/chat/ErpInfo/level I
aload 0
iconst_1
putfield com/product/android/commonInterface/chat/ErpInfo/clickable Z
return
.limit locals 1
.limit stack 2
.end method

.method private parseMsg(Lorg/xmlpull/v1/XmlPullParser;)Z
.throws org/xmlpull/v1/XmlPullParserException
.throws java/io/IOException
aload 1
ldc ""
ldc "business"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 3
ldc "ERP_TASK"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
L0:
iconst_0
ireturn
L1:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
L2:
iload 2
iconst_3
if_icmpne L3
aload 3
ldc "app"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
L3:
aload 3
ifnull L5
iload 2
iconst_3
if_icmpeq L5
aload 3
ldc "taskid"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L6
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/product/android/commonInterface/chat/ErpInfo/taskId Ljava/lang/String;
L5:
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 3
goto L2
L6:
aload 3
ldc "tasktitle"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/product/android/commonInterface/chat/ErpInfo/tasktitle Ljava/lang/String;
goto L5
L7:
aload 3
ldc "tasktime"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L8
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/product/android/commonInterface/chat/ErpInfo/tasktime Ljava/lang/String;
goto L5
L8:
aload 3
ldc "projectid"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L9
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/product/android/commonInterface/chat/ErpInfo/projectid Ljava/lang/String;
goto L5
L9:
aload 3
ldc "projectname"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L10
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/product/android/commonInterface/chat/ErpInfo/projectname Ljava/lang/String;
goto L5
L10:
aload 3
ldc "msg"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L11
aload 0
aload 1
ldc "level"
invokestatic com/common/android/utils/XMLUtils/getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/level I
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
putfield com/product/android/commonInterface/chat/ErpInfo/content Ljava/lang/String;
goto L5
L11:
aload 3
ldc "type"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L12
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/type I
goto L5
L12:
aload 3
ldc "status"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
pop
aload 0
aload 1
invokeinterface org/xmlpull/v1/XmlPullParser/getText()Ljava/lang/String; 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/status I
goto L5
L4:
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public packToJson()Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "bussinessId"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/bussinessId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "taskId"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/taskId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "content"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/content Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "appCode"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/appCode Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "appId"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/appId I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "isNeedProject"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/isNeedProject I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "type"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/type I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "status"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/status I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "tasktitle"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/tasktitle Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "projectid"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/projectid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "projectname"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/projectname Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "tasktime"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/tasktime Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "level"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/level I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "generateId"
aload 0
getfield com/product/android/commonInterface/chat/ErpInfo/generateId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public parseFromJson(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "bussinessId"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/bussinessId Ljava/lang/String;
aload 0
aload 1
ldc "taskId"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/taskId Ljava/lang/String;
aload 0
aload 1
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/content Ljava/lang/String;
aload 0
aload 1
ldc "appCode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/appCode Ljava/lang/String;
aload 0
aload 1
ldc "appId"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/appId I
aload 0
aload 1
ldc "isNeedProject"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/isNeedProject I
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/type I
aload 0
aload 1
ldc "level"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/level I
aload 0
aload 1
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/status I
aload 0
aload 1
ldc "tasktitle"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/tasktitle Ljava/lang/String;
aload 0
aload 1
ldc "projectid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/projectid Ljava/lang/String;
aload 0
aload 1
ldc "projectname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/projectname Ljava/lang/String;
aload 0
aload 1
ldc "tasktime"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/tasktime Ljava/lang/String;
aload 0
aload 1
ldc "generateId"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/chat/ErpInfo/generateId Ljava/lang/String;
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public parseFromXml(Ljava/lang/String;)V
.catch org/xmlpull/v1/XmlPullParserException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/xmlpull/v1/XmlPullParserException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
.catch org/xmlpull/v1/XmlPullParserException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
.catch org/xmlpull/v1/XmlPullParserException from L8 to L9 using L2
.catch java/io/IOException from L8 to L9 using L3
L0:
invokestatic org/xmlpull/v1/XmlPullParserFactory/newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
invokevirtual org/xmlpull/v1/XmlPullParserFactory/newPullParser()Lorg/xmlpull/v1/XmlPullParser;
astore 4
aload 4
new java/io/ByteArrayInputStream
dup
aload 1
invokevirtual java/lang/String/getBytes()[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
ldc "UTF-8"
invokeinterface org/xmlpull/v1/XmlPullParser/setInput(Ljava/io/InputStream;Ljava/lang/String;)V 2
aload 4
invokeinterface org/xmlpull/v1/XmlPullParser/getEventType()I 0
istore 2
L1:
goto L10
L4:
aload 4
invokeinterface org/xmlpull/v1/XmlPullParser/next()I 0
istore 2
L5:
goto L10
L6:
aload 4
invokeinterface org/xmlpull/v1/XmlPullParser/getName()Ljava/lang/String; 0
astore 1
aload 1
ldc "body"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L8
aload 0
aload 4
ldc "appid"
invokestatic com/common/android/utils/XMLUtils/getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
putfield com/product/android/commonInterface/chat/ErpInfo/appId I
aload 0
aload 4
ldc ""
ldc "bussid"
invokeinterface org/xmlpull/v1/XmlPullParser/getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
putfield com/product/android/commonInterface/chat/ErpInfo/bussinessId Ljava/lang/String;
L7:
goto L4
L2:
astore 1
ldc "ErpInfo"
aload 1
invokevirtual org/xmlpull/v1/XmlPullParserException/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
return
L8:
aload 1
ldc "app"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 4
invokespecial com/product/android/commonInterface/chat/ErpInfo/parseMsg(Lorg/xmlpull/v1/XmlPullParser;)Z
istore 3
L9:
iload 3
ifeq L11
goto L4
L3:
astore 1
ldc "ErpInfo"
aload 1
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L10:
iload 2
iconst_1
if_icmpeq L11
iload 2
tableswitch 0
L4
L4
L6
default : L12
L12:
goto L4
.limit locals 5
.limit stack 4
.end method
