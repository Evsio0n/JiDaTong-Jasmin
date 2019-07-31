.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/BootLotteryActivity$1
.super com/common/android/utils/task/progressTask/ProgressTask
.enclosing method com/nd/android/u/cloud/activity/BootLotteryActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/BootLotteryActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/BootLotteryActivity;

.field 'total' I

.field 'userdata' Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;

.method <init>(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/total I
aload 0
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
putfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
return
.limit locals 4
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
new com/nd/android/u/tast/com/OapLotteryCom
dup
invokespecial com/nd/android/u/tast/com/OapLotteryCom/<init>()V
astore 1
L0:
aload 1
iconst_1
iconst_0
bipush 20
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getRecordRankRafflesJson(III)Lorg/json/JSONObject;
astore 1
aload 0
aload 1
ldc "total"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/total I
aload 1
ldc "prize"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual org/json/JSONArray/length()I
ifle L4
aload 1
aload 1
invokevirtual org/json/JSONArray/length()I
iconst_1
isub
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/initLotUser(Lorg/json/JSONObject;)V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getDepart()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitName()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setDepart(Ljava/lang/String;)V
L4:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity$1/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/total I
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokestatic com/nd/android/u/cloud/activity/BootLotteryActivity/access$000(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
ldc_w 2131494211
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokestatic com/nd/android/u/cloud/activity/BootLotteryActivity/access$100(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokestatic com/nd/android/u/cloud/activity/BootLotteryActivity/access$200(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/total I
ifle L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u53f7\u5916\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getDepart()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u7684 "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokestatic com/nd/android/u/cloud/activity/BootLotteryActivity/access$000(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUser_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " \u62bd\u4e2d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",\u4e0b\u4e00\u53f0\u5c31\u4f1a\u662f\u4f60\u54e6"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new android/text/SpannableStringBuilder
dup
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokestatic com/nd/android/u/cloud/activity/BootLotteryActivity/access$000(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokespecial android/text/SpannableStringBuilder/<init>(Ljava/lang/CharSequence;)V
astore 2
aload 2
new android/text/style/ForegroundColorSpan
dup
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokevirtual com/nd/android/u/cloud/activity/BootLotteryActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131362032
invokevirtual android/content/res/Resources/getColor(I)I
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
aload 1
invokevirtual java/lang/String/length()I
aload 1
invokevirtual java/lang/String/length()I
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/userdata Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUser_name()Ljava/lang/String;
invokevirtual java/lang/String/length()I
iadd
bipush 17
invokevirtual android/text/SpannableStringBuilder/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokestatic com/nd/android/u/cloud/activity/BootLotteryActivity/access$000(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/BootLotteryActivity$1/this$0 Lcom/nd/android/u/cloud/activity/BootLotteryActivity;
invokestatic com/nd/android/u/cloud/activity/BootLotteryActivity/access$100(Lcom/nd/android/u/cloud/activity/BootLotteryActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
.limit locals 3
.limit stack 5
.end method
