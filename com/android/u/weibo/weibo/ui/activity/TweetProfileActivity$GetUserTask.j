.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Lcom/product/android/commonInterface/contact/OapUser;Ljava/lang/Void;>;"
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L3 to L4 using L5
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L6 using L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
astore 1
aload 0
iconst_1
anewarray com/product/android/commonInterface/contact/OapUser
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/synGetOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getUserPageInfo(J)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2902(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)I
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/isInBlackList(J)Z
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3002(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getUserFlowerInfo(J)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
pop
L1:
aconst_null
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L1
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3100(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
ifnonnull L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
new com/product/android/commonInterface/weibo/FlowerMessageInfo
dup
invokespecial com/product/android/commonInterface/weibo/FlowerMessageInfo/<init>()V
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
pop
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3100(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getUserReceiveFlower(J)I
putfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
L6:
goto L1
L5:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/onPostExecute(Ljava/lang/Void;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)I
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/weibo_uid J
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$302(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;J)J
pop2
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshUserTimeline(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L0:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
lconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$302(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;J)J
pop2
goto L2
.limit locals 2
.limit stack 7
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method

.method protected transient onProgressUpdate([Lcom/product/android/commonInterface/contact/OapUser;)V
aload 1
ifnull L0
aload 1
arraylength
ifle L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 1
iconst_0
aaload
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3202(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/product/android/commonInterface/contact/OapUser;)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtName Lcom/android/u/weibo/weibo/ui/widget/MarqueeText;
aload 2
invokevirtual com/android/u/weibo/weibo/ui/widget/MarqueeText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/txtName Lcom/android/u/weibo/weibo/ui/widget/MarqueeText;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/setMarqueeText(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getAge()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2600(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$id/go_setting I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/findViewById(I)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetUserTask/onProgressUpdate([Lcom/product/android/commonInterface/contact/OapUser;)V
return
.limit locals 2
.limit stack 2
.end method
