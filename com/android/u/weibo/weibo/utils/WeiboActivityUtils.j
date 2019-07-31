.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/WeiboActivityUtils
.super java/lang/Object
.inner class static synthetic inner com/android/u/weibo/weibo/utils/WeiboActivityUtils$1

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static toCommentListActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 2
ifnull L3
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L3
aload 1
ifnull L3
aload 0
ifnonnull L4
L3:
return
L4:
ldc ""
astore 3
L0:
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 2
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 2
L1:
aload 1
ldc "tweet"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 0
ldc com/android/u/weibo/weibo/ui/activity/CommentListActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 3
astore 2
goto L1
.limit locals 4
.limit stack 3
.end method

.method public static toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 1
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L0
aload 0
ifnonnull L1
L0:
return
L1:
aload 0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;)V
.signature "(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List<Lcom/android/u/weibo/weibo/business/bean/WbImage;>;)V"
aload 0
aload 1
aload 2
iconst_m1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public static toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;I)V
.signature "(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List<Lcom/android/u/weibo/weibo/business/bean/WbImage;>;I)V"
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ldc "android.nd.action.TweetPanorama"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
L0:
aload 1
ldc "wbimage_list"
new com/android/u/weibo/weibo/business/parser/WbImageListparser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbImageListparser/<init>()V
aload 2
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageListparser/toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
invokevirtual org/json/JSONArray/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L1:
aload 0
aload 1
iload 3
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;I)V
return
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 4
.limit stack 4
.end method

.method public static toTweetProfileActivity(Landroid/content/Context;J)V
aload 0
lload 1
iconst_m1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;JI)V
return
.limit locals 3
.limit stack 4
.end method

.method public static toTweetProfileActivity(Landroid/content/Context;JI)V
lload 1
lconst_0
lcmp
ifne L0
return
L0:
getstatic com/android/u/weibo/weibo/utils/WeiboActivityUtils$1/$SwitchMap$com$product$android$business$ProductTypeDef$Product [I
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
invokevirtual com/product/android/business/ProductTypeDef$Product/ordinal()I
iaload
tableswitch 1
L1
L2
default : L3
L3:
return
L1:
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetProfileActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
ldc "uid"
lload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L2:
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L4
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileMyActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L4:
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileOtherActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
ldc "uid"
lload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
instanceof android/app/Activity
ifeq L5
iload 3
iconst_m1
if_icmpeq L5
aload 0
checkcast android/app/Activity
aload 4
iload 3
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L5:
aload 0
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 5
.end method
