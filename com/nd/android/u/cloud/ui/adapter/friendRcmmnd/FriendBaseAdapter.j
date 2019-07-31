.bytecode 50.0
.class public synchronized abstract com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter
.super android/widget/BaseAdapter
.implements android/view/View$OnClickListener
.inner class private FollowingTask inner com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask outer com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter
.inner class public static FrHolder inner com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder outer com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter

.field protected 'mContext' Landroid/content/Context;

.field protected 'mListAction' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Long;>;"

.field private 'mListTask' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;>;"

.method public <init>(Landroid/content/Context;Landroid/widget/ListView;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mListAction Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mListTask Ljava/util/List;
return
.limit locals 3
.limit stack 3
.end method

.method private doAttention(J)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
lcmp
ifne L0
ldc_w 2131493103
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/checkUidIsMyFolling(J)Z
ifeq L1
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
ldc "\""
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 0
lload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/getUserName(J)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "\""
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131492977
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L1:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 4
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "friend"
aload 4
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
ldc com/nd/android/u/contact/activity/FriendsGroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
checkcast android/support/v4/app/FragmentActivity
aload 4
iconst_1
invokevirtual android/support/v4/app/FragmentActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 5
.limit stack 4
.end method

.method public createView()Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903347
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
new com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder
dup
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/<init>()V
astore 2
aload 2
aload 1
ldc_w 2131625262
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAvatar Landroid/widget/ImageView;
aload 2
aload 1
ldc_w 2131624227
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/tvName Landroid/widget/TextView;
aload 2
aload 1
ldc_w 2131625404
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/tvRelation Landroid/widget/TextView;
aload 2
aload 1
ldc_w 2131625403
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAddFollow Landroid/widget/ImageView;
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAddFollow Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAvatar Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public follow(JLjava/lang/StringBuilder;)Z
iconst_1
istore 4
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31001
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifeq L0
aload 3
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
ldc "FriendBaseAdapter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "WEIBO FOLLOW FAIL UID:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
istore 4
L1:
iload 4
ireturn
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11002
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ifeq L1
aload 3
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
ldc "FriendBaseAdapter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "OAP FOLLOW FAIL UID:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public abstract getUserIndex(J)I
.end method

.method public abstract getUserName(J)Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131625403
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
ldc_w 2131494478
invokestatic com/common/android/utils/ToastUtils/display(I)V
L2:
return
L1:
aload 0
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/startFollowAction(J)V
return
L0:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131625262
if_icmpne L3
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
astore 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
aload 1
invokevirtual java/lang/Long/longValue()J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
L3:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131625264
if_icmpne L2
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
astore 2
aload 1
checkcast android/widget/Button
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131492978
invokevirtual android/content/res/Resources/getText(I)Ljava/lang/CharSequence;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L4
ldc_w 2131494478
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L4:
aload 0
aload 2
invokevirtual java/lang/Long/longValue()J
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/doAttention(J)V
return
.limit locals 3
.limit stack 3
.end method

.method protected startFollowAction(J)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mListAction Ljava/util/List;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
ldc_w 2131493662
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
lcmp
ifne L1
ldc_w 2131493102
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/checkUidIsMyFolling(J)Z
ifeq L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
ldc "\""
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 0
lload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/getUserName(J)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc "\""
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131492977
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mListAction Ljava/util/List;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask
dup
aload 0
lload 1
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/<init>(Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter;J)V
astore 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mListTask Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FollowingTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 4
.limit stack 5
.end method

.method public stopTask()V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/mListTask Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/utils/concurrent/NdTinyHttpAsyncTask
astore 2
aload 2
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 2
iconst_1
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask/cancel(Z)Z
pop
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method
