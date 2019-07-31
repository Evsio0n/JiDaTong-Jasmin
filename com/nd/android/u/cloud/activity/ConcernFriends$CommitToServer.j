.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private CommitToServer inner com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer outer com/nd/android/u/cloud/activity/ConcernFriends

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ConcernFriends;

.method private <init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;Lcom/nd/android/u/cloud/activity/ConcernFriends$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch com/common/android/utils/http/HttpAuthException from L5 to L6 using L7
.catch com/common/android/utils/http/ResponseException from L5 to L6 using L8
.catch com/common/android/utils/http/HttpServerException from L5 to L6 using L9
.catch com/common/android/utils/http/HttpException from L5 to L6 using L10
.catch org/json/JSONException from L5 to L6 using L11
.catch com/common/android/utils/http/HttpAuthException from L12 to L13 using L7
.catch com/common/android/utils/http/ResponseException from L12 to L13 using L8
.catch com/common/android/utils/http/HttpServerException from L12 to L13 using L9
.catch com/common/android/utils/http/HttpException from L12 to L13 using L10
.catch org/json/JSONException from L12 to L13 using L11
.catch com/common/android/utils/http/HttpAuthException from L14 to L15 using L7
.catch com/common/android/utils/http/ResponseException from L14 to L15 using L8
.catch com/common/android/utils/http/HttpServerException from L14 to L15 using L9
.catch com/common/android/utils/http/HttpException from L14 to L15 using L10
.catch org/json/JSONException from L14 to L15 using L11
.catch com/common/android/utils/http/HttpAuthException from L16 to L17 using L18
.catch com/common/android/utils/http/ResponseException from L16 to L17 using L19
.catch com/common/android/utils/http/HttpServerException from L16 to L17 using L20
.catch com/common/android/utils/http/HttpException from L16 to L17 using L21
.catch org/json/JSONException from L16 to L17 using L11
.catch com/common/android/utils/http/HttpAuthException from L22 to L23 using L7
.catch com/common/android/utils/http/ResponseException from L22 to L23 using L8
.catch com/common/android/utils/http/HttpServerException from L22 to L23 using L9
.catch com/common/android/utils/http/HttpException from L22 to L23 using L10
.catch org/json/JSONException from L22 to L23 using L11
.catch com/common/android/utils/http/HttpAuthException from L24 to L25 using L7
.catch com/common/android/utils/http/ResponseException from L24 to L25 using L8
.catch com/common/android/utils/http/HttpServerException from L24 to L25 using L9
.catch com/common/android/utils/http/HttpException from L24 to L25 using L10
.catch org/json/JSONException from L24 to L25 using L11
.catch com/common/android/utils/http/HttpException from L26 to L27 using L28
.catch java/lang/Exception from L26 to L27 using L2
.catch java/lang/Exception from L29 to L30 using L2
.catch java/lang/Exception from L30 to L31 using L2
.catch java/lang/Exception from L32 to L33 using L2
.catch java/lang/Exception from L34 to L35 using L2
.catch com/common/android/utils/http/HttpAuthException from L36 to L37 using L7
.catch com/common/android/utils/http/ResponseException from L36 to L37 using L8
.catch com/common/android/utils/http/HttpServerException from L36 to L37 using L9
.catch com/common/android/utils/http/HttpException from L36 to L37 using L10
.catch org/json/JSONException from L36 to L37 using L11
.catch com/common/android/utils/http/HttpAuthException from L38 to L39 using L7
.catch com/common/android/utils/http/ResponseException from L38 to L39 using L8
.catch com/common/android/utils/http/HttpServerException from L38 to L39 using L9
.catch com/common/android/utils/http/HttpException from L38 to L39 using L10
.catch org/json/JSONException from L38 to L39 using L11
.catch com/common/android/utils/http/HttpAuthException from L40 to L41 using L7
.catch com/common/android/utils/http/ResponseException from L40 to L41 using L8
.catch com/common/android/utils/http/HttpServerException from L40 to L41 using L9
.catch com/common/android/utils/http/HttpException from L40 to L41 using L10
.catch org/json/JSONException from L40 to L41 using L11
.catch com/common/android/utils/http/HttpAuthException from L42 to L43 using L7
.catch com/common/android/utils/http/ResponseException from L42 to L43 using L8
.catch com/common/android/utils/http/HttpServerException from L42 to L43 using L9
.catch com/common/android/utils/http/HttpException from L42 to L43 using L10
.catch org/json/JSONException from L42 to L43 using L11
.catch com/common/android/utils/http/HttpAuthException from L44 to L45 using L7
.catch com/common/android/utils/http/ResponseException from L44 to L45 using L8
.catch com/common/android/utils/http/HttpServerException from L44 to L45 using L9
.catch com/common/android/utils/http/HttpException from L44 to L45 using L10
.catch org/json/JSONException from L44 to L45 using L11
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 7
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
ifnull L46
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L46
ldc ""
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 8
L47:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "+"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L47
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
iconst_0
invokevirtual com/android/u/weibo/weibo/controller/Manager/follow(Ljava/util/ArrayList;Z)Z
ifne L1
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "follow error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 8
L3:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L26
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 5
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
iconst_0
lload 5
aconst_null
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/addFriend(IJLcom/product/android/commonInterface/contact/OapUser;)V
L4:
goto L3
L2:
astore 8
aload 8
invokevirtual java/lang/Exception/printStackTrace()V
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tagChange Exception:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "--"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L46:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/WeiBoModuler/setVersion()Z
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$602(Lcom/nd/android/u/cloud/activity/ConcernFriends;Z)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$600(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Z
ifeq L25
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 7
L5:
aload 7
invokevirtual com/nd/android/u/tast/com/AjaxCom/getInitwizardScore()Lorg/json/JSONObject;
astore 8
aload 8
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L6:
iload 2
sipush 200
if_icmpeq L12
iload 2
sipush 201
if_icmpne L25
L12:
aload 8
ldc "exp"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
aload 8
ldc "money"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
L13:
aconst_null
astore 1
L14:
aload 8
ldc "levelup"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 4
L15:
iload 4
ifle L44
L16:
aload 7
lconst_0
invokevirtual com/nd/android/u/tast/com/AjaxCom/getUserscore(J)Lorg/json/JSONObject;
astore 7
L17:
aload 7
astore 1
L22:
aload 1
ldc "code"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
L23:
aload 1
ifnull L25
iload 2
sipush 200
if_icmpne L25
L24:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
aload 1
invokevirtual com/product/android/commonInterface/task/OapScore/setScoreData(Lorg/json/JSONObject;)V
L25:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$600(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Z
ifeq L48
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L26:
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
ldc ""
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendApply(Ljava/util/ArrayList;Ljava/lang/String;)Z
pop
L27:
goto L46
L28:
astore 8
L29:
aload 8
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 403
L32
L30
L30
L34
default : L49
L30:
aload 8
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L31:
goto L46
L32:
aload 8
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L33:
goto L46
L34:
aload 8
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L35:
goto L46
L18:
astore 7
L36:
aload 7
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
L37:
goto L22
L7:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
goto L25
L19:
astore 7
L38:
aload 7
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L39:
goto L22
L8:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
goto L25
L20:
astore 7
L40:
aload 7
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
L41:
goto L22
L9:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
goto L25
L21:
astore 7
L42:
aload 7
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L43:
goto L22
L10:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L25
L44:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getTotalexp()I
iload 2
iadd
invokevirtual com/product/android/commonInterface/task/OapScore/setTotalexp(I)V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
invokevirtual com/product/android/commonInterface/task/OapScore/getTotalmoney()I
iload 3
iadd
invokevirtual com/product/android/commonInterface/task/OapScore/setTotalmoney(I)V
L45:
goto L25
L11:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L25
L48:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L49:
goto L30
.limit locals 9
.limit stack 5
.end method
