.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller
.super java/lang/Object
.inner class inner com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1

.field public static final 'BUSINESS_MICROBLOG' Ljava/lang/String; = "MICROBLOG"

.field public static final 'BUSINESS_NEW_FRIEND' Ljava/lang/String; = "NEW_FRIEND"

.field public static final 'BUSINESS_PHOTO' Ljava/lang/String; = "PHOTO"

.field public static final 'BUSINESS_SIGNATURE' Ljava/lang/String; = "SIGNATURE"

.field public static final 'DEF_DELAY' I = 3000


.field public static final 'DEF_PERIOD' I = 86400000


.field public static final 'URI_FRIEND_UPDATE' Ljava/lang/String; = "api/dynamic_msgs/%s/friends"

.field public static final 'URI_PREFIX' Ljava/lang/String;

.field private 'mTimer' Ljava/util/Timer;

.field private 'mTimerTask' Ljava/util/TimerTask;

.method static <clinit>()V
getstatic com/product/android/business/config/Configuration/V2_API_SERVICE_URL Ljava/lang/String;
putstatic com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/URI_PREFIX Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;Landroid/content/Context;Lorg/json/JSONObject;J)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
.throws org/json/JSONException
aload 0
aload 1
aload 2
lload 3
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/jsonObj2Msg(Landroid/content/Context;Lorg/json/JSONObject;J)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
areturn
.limit locals 5
.limit stack 5
.end method

.method private jsonObj2Msg(Landroid/content/Context;Lorg/json/JSONObject;J)Lcom/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay;
.throws org/json/JSONException
aload 2
ifnonnull L0
ldc ""
astore 6
L1:
aconst_null
astore 5
ldc "MICROBLOG"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MicroblogUpdate
dup
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_MicroblogUpdate/<init>(Landroid/content/Context;)V
astore 5
aload 5
sipush 20002
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setMessageContentType(I)V 1
L3:
aload 5
ifnull L4
aload 5
lload 3
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setFromUid(J)V 2
aload 5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setToUid(J)V 2
aload 5
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setOriMessage(Ljava/lang/String;)V 1
ldc "@@"
ldc "@@ dispatch dyn msg..."
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 5
iconst_0
iconst_0
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setIsRead(IZ)V 2
L4:
aload 5
areturn
L0:
aload 2
ldc "business"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 6
goto L1
L2:
ldc "SIGNATURE"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate
dup
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/<init>(Landroid/content/Context;)V
astore 5
aload 5
sipush 20001
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setMessageContentType(I)V 1
goto L3
L5:
ldc "PHOTO"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate
dup
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/<init>(Landroid/content/Context;)V
astore 5
aload 5
sipush 20003
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setMessageContentType(I)V 1
goto L3
L6:
ldc "NEW_FRIEND"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend
dup
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/<init>(Landroid/content/Context;)V
astore 5
aload 5
sipush 20004
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setMessageContentType(I)V 1
goto L3
.limit locals 7
.limit stack 3
.end method

.method public buildTestData()Ljava/lang/String;
new java/util/Random
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Random/<init>(J)V
bipush 10
invokevirtual java/util/Random/nextInt(I)I
iconst_3
irem
istore 1
ldc "@@"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Ramdom key="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
ldc "error radom data!"
areturn
L0:
aload 0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/getQm()Ljava/lang/String;
areturn
L1:
aload 0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/getWb()Ljava/lang/String;
areturn
L2:
aload 0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/getXc()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public creatNewFriendDynamicMessage(Landroid/content/Context;J)V
new com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend
dup
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewFriend/<init>(Landroid/content/Context;)V
astore 1
aload 1
sipush 20004
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setMessageContentType(I)V 1
aload 1
lload 2
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setFromUid(J)V 2
aload 1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setToUid(J)V 2
aload 1
iconst_1
iconst_0
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setIsRead(IZ)V 2
aload 1
invokestatic java/lang/System/currentTimeMillis()J
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/setCreateDate(J)V 2
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 1
invokeinterface com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
iconst_1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
return
.limit locals 4
.limit stack 3
.end method

.method public getQm()Ljava/lang/String;
ldc "{'business':'SIGNATURE','jsonbody':{'content': '\u6765\u611f\u53d7\u6c64\u59c6\u7684\u51dd\u671b\u548c\u5fe7\u4f24 !'},'time':'%s'}"
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWb()Ljava/lang/String;
ldc "{                                                              'business':'MICROBLOG',                                        'jsonbody':{                                                     'content': '\u8be5\u7cfb\u7edf\u5177\u6709\u5904\u7406\u65f6\u95f4\u77ed\u3001\u538b\u7f29\u500d\u6570\u9ad8\uff0c\u8fd0\u7528\u6027\u5f3a\u7b49\u4f18\u70b9\u3002',                                   'imagepre':'https://a.hiphotos.baidu.com/image/pic/item',       'images':[                                                         {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'},      {'path':'/bf096b63f6246b6004c0b975e9f81a4c500fa2e0.jpg'}       ]                                                        },                                                             'time':'%s'                                                    }                                                              "
areturn
.limit locals 1
.limit stack 1
.end method

.method public getXc()Ljava/lang/String;
ldc "{                                                              'business':'PHOTO',                                        'jsonbody':{                                                     'content': '\u76f8\u518c\u66f4\u65b0\u5566!!',                                      'imagepre':'https://e.hiphotos.baidu.com/image/pic/item',       'images':[                                                         {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'},      {'path':'/4ec2d5628535e5ddbb63bade74c6a7efce1b6267.jpg'}      ]                                                        },                                                             'time':'%s'                                                    }                                                              "
areturn
.limit locals 1
.limit stack 1
.end method

.method public start(Landroid/content/Context;J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/URI_PREFIX Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "api/dynamic_msgs/%s/friends"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimer Ljava/util/Timer;
aload 0
new com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1
dup
aload 0
aload 4
aload 1
lload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller$1/<init>(Lcom/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller;Ljava/lang/String;Landroid/content/Context;J)V
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimerTask Ljava/util/TimerTask;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimer Ljava/util/Timer;
ifnull L0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimerTask Ljava/util/TimerTask;
ifnull L0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimer Ljava/util/Timer;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimerTask Ljava/util/TimerTask;
ldc2_w 3000L
ldc2_w 86400000L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
L0:
return
.limit locals 5
.limit stack 8
.end method

.method public stop()V
ldc "@@"
ldc "@@ stop dyn msg puller..."
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimer Ljava/util/Timer;
ifnull L0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimer Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
aload 0
aconst_null
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimer Ljava/util/Timer;
L0:
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimerTask Ljava/util/TimerTask;
ifnull L1
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimerTask Ljava/util/TimerTask;
invokevirtual java/util/TimerTask/cancel()Z
pop
aload 0
aconst_null
putfield com/nd/android/u/bean4xy/dynamicMessage/DynamicMessagePuller/mTimerTask Ljava/util/TimerTask;
L1:
return
.limit locals 1
.limit stack 2
.end method
