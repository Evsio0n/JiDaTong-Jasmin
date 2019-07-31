.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/adapter/RafflesListAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$4
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5
.inner class private LotteryProcessTask inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask outer com/nd/android/u/tast/lottery/adapter/RafflesListAdapter
.inner class static final ViewHolder inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder outer com/nd/android/u/tast/lottery/adapter/RafflesListAdapter
.inner class private lotHisData inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData outer com/nd/android/u/tast/lottery/adapter/RafflesListAdapter

.field public static 'isChecked' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"

.field private 'UrlString' Ljava/lang/String;

.field private 'imageSize' I

.field private 'mContext' Landroid/content/Context;

.field private 'mLotProcessTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mProcessTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field public 'mRafflesList' Lcom/product/android/commonInterface/task/RafflesList;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'unitid' I

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/task/RafflesList;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
sipush 128
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/imageSize I
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "prize/img?pid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/UrlString Ljava/lang/String;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/unitid I
aload 0
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$5/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mLotProcessTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/init()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mProcessTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Lcom/common/android/utils/task/genericTask/GenericTask;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mProcessTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mLotProcessTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/m_dialog Landroid/app/ProgressDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public disCheck(I)V
getstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 2
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/product/android/commonInterface/task/Raffles;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
iload 1
invokevirtual com/product/android/commonInterface/task/RafflesList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/task/Raffles
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getItem(I)Lcom/product/android/commonInterface/task/Raffles;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/lottert_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder
dup
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/<init>()V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/giftimg I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/img Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/giftname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/giftdescript I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/btn_delete I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_delete Landroid/widget/Button;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/btn_get_lot I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getItem(I)Lcom/product/android/commonInterface/task/Raffles;
astore 4
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtName Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_name()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getCreate_dt()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_status()I
ifeq L2
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_status()I
iconst_1
if_icmpne L3
L2:
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_status()I
ifne L4
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
iconst_1
if_icmpne L5
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
new android/text/SpannableStringBuilder
dup
ldc "\u5f85\u53d1\u653e\uff0c\u5982\u6709\u7591\u95ee\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d"
invokespecial android/text/SpannableStringBuilder/<init>(Ljava/lang/CharSequence;)V
astore 5
aload 5
new android/text/style/ForegroundColorSpan
dup
ldc_w -16776961
invokespecial android/text/style/ForegroundColorSpan/<init>(I)V
bipush 12
bipush 14
iconst_0
invokevirtual android/text/SpannableStringBuilder/setSpan(Ljava/lang/Object;III)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L6:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/UrlString Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_id()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/unitid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/imageSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokestatic com/nd/android/u/tast/com/TaskComFactory/appendSid2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/img Landroid/widget/ImageView;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
getfield com/nd/android/u/tast/buss/TaskModelManager/taskImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
getstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L7
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_status()I
iconst_1
if_icmpne L7
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_delete Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_delete Landroid/widget/Button;
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$4
dup
aload 0
iload 1
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$4/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;I)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder
astore 3
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
aconst_null
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L1
L5:
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
iconst_3
if_icmpne L8
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
getstatic com/nd/android/u/tasklib/R$string/lot_prise_geted I
invokevirtual android/widget/TextView/setText(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L6
L8:
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
iconst_2
if_icmpne L6
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
getstatic com/nd/android/u/tasklib/R$string/lot_prise_uncomfirm I
invokevirtual android/widget/TextView/setText(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
getstatic com/nd/android/u/tasklib/R$string/lot_btn_get_prise I
invokevirtual android/widget/Button/setText(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L6
L4:
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
getstatic com/nd/android/u/tasklib/R$string/lot_prise_geted I
invokevirtual android/widget/TextView/setText(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L6
L3:
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_status()I
iconst_2
if_icmpne L6
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
iconst_1
if_icmpne L9
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/task/Raffles/getComment()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L6
L9:
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/txtContent Landroid/widget/TextView;
getstatic com/nd/android/u/tasklib/R$string/lot_prise_uncomfirm I
invokevirtual android/widget/TextView/setText(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
getstatic com/nd/android/u/tasklib/R$string/lot_btn_get_prise I
invokevirtual android/widget/Button/setText(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_get_lot Landroid/widget/Button;
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3
dup
aload 0
aload 4
iload 1
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Lcom/product/android/commonInterface/task/Raffles;I)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L6
L7:
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$ViewHolder/btn_delete Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 2
areturn
.limit locals 6
.limit stack 6
.end method

.method public init()V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
if_icmpge L1
getstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 2
.limit stack 3
.end method

.method public loadMore(Lcom/product/android/commonInterface/task/RafflesList;)V
aload 1
ifnull L0
iconst_0
istore 2
L1:
iload 2
aload 1
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
if_icmpge L0
aload 1
iload 2
invokevirtual com/product/android/commonInterface/task/RafflesList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/task/Raffles
astore 3
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
aload 3
invokevirtual com/product/android/commonInterface/task/RafflesList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/init()V
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 2
.end method

.method public releaseTask()V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mProcessTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mProcessTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mProcessTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public setChecked(I)V
iconst_0
istore 2
L0:
iload 2
getstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
if_icmpge L1
iload 2
iload 1
if_icmpne L2
getstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
getstatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/isChecked Ljava/util/Map;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L3
L1:
return
.limit locals 3
.limit stack 3
.end method
