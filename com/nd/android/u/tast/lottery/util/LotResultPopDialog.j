.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/util/LotResultPopDialog
.super android/app/Dialog
.inner class inner com/nd/android/u/tast/lottery/util/LotResultPopDialog$1
.inner class inner com/nd/android/u/tast/lottery/util/LotResultPopDialog$2

.field private 'OnBtnClick' Landroid/view/View$OnClickListener;

.field private 'PRISE_IMG_URL' Ljava/lang/String;

.field private 'aiv_prise_img' Landroid/widget/ImageView;

.field private 'btnDo' Landroid/widget/Button;

.field private 'btnSell' Landroid/widget/Button;

.field private 'mButtonType' I

.field private 'mContext' Landroid/content/Context;

.field private 'mPriseData' Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;

.field private 'mShow' Z

.field private 'myListener' Lcom/nd/android/u/tast/lottery/util/LotResultDialogListener;

.field private 'tv_priseRank' Landroid/widget/TextView;

.field private 'tv_prise_name' Landroid/widget/TextView;

.field private 'unitid' I

.field private 'window' Landroid/view/Window;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/tast/lottery/util/LotResultDialogListener;)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/window Landroid/view/Window;
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mShow Z
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mButtonType I
aload 0
new com/nd/android/u/tast/lottery/util/LotResultPopDialog$1
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/util/LotResultPopDialog$1/<init>(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)V
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/OnBtnClick Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/myListener Lcom/nd/android/u/tast/lottery/util/LotResultDialogListener;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "prize/img?pid=%d&unitid=%d&size=%d"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/PRISE_IMG_URL Ljava/lang/String;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/unitid I
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mPriseData Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private setView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/aiv_prise_img I
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/aiv_prise_img Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_priseRank I
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/tv_priseRank Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_prise_name I
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/tv_prise_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_get_prise I
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/btnDo Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/btnDo Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/OnBtnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_sell I
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/btnSell Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/btnSell Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/OnBtnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mPriseData Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/PRISE_IMG_URL Ljava/lang/String;
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mPriseData Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/unitid I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
sipush 280
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/aiv_prise_img Landroid/widget/ImageView;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
getfield com/nd/android/u/tast/buss/TaskModelManager/taskImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/tv_priseRank Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mPriseData Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getRank()I
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/getLotRankString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/tv_prise_name Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mPriseData Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/btnSell Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public dismissDialogL()V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/myListener Lcom/nd/android/u/tast/lottery/util/LotResultDialogListener;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/myListener Lcom/nd/android/u/tast/lottery/util/LotResultDialogListener;
iconst_2
invokeinterface com/nd/android/u/tast/lottery/util/LotResultDialogListener/onResult(I)V 1
L0:
aload 0
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/dismiss()V
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mShow Z
invokestatic java/lang/System/gc()V
return
.limit locals 1
.limit stack 2
.end method

.method public isShow()Z
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mShow Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onBackPressed()V
aload 0
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/dismissDialogL()V
return
.limit locals 1
.limit stack 1
.end method

.method public setPriseData(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mPriseData Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
return
.limit locals 2
.limit stack 2
.end method

.method public showDialog()V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mShow Z
ifeq L0
return
L0:
aload 0
getstatic com/nd/android/u/tasklib/R$layout/lot_result_pop_dialog I
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/setContentView(I)V
aload 0
invokespecial com/nd/android/u/tast/lottery/util/LotResultPopDialog/setView()V
aload 0
aload 0
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/getWindow()Landroid/view/Window;
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/window Landroid/view/Window;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/window Landroid/view/Window;
getstatic com/nd/android/u/tasklib/R$style/PopSlideAnimation I
invokevirtual android/view/Window/setWindowAnimations(I)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/window Landroid/view/Window;
bipush 17
invokevirtual android/view/Window/setGravity(I)V
aload 0
iconst_1
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mShow Z
aload 0
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/show()V
return
.limit locals 1
.limit stack 2
.end method

.method protected startGetPrise(Z)V
iload 1
ifeq L0
aload 0
iconst_1
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mButtonType I
L1:
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mPriseData Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getFlag()I
iconst_1
if_icmpne L2
iconst_1
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mButtonType I
if_icmpne L3
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mContext Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_function_not_support I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/dismissDialogL()V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mButtonType I
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/btnDo Landroid/widget/Button;
getstatic com/nd/android/u/tasklib/R$string/lot_prise_comfirm I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/btnDo Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setClickable(Z)V
goto L1
L3:
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mContext Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
getstatic com/nd/android/u/tasklib/R$string/lot_get_prise_tip_title I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
getstatic com/nd/android/u/tasklib/R$string/lot_get_prise_tip_info I
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
getstatic com/nd/android/u/tasklib/R$string/ok I
new com/nd/android/u/tast/lottery/util/LotResultPopDialog$2
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/util/LotResultPopDialog$2/<init>(Lcom/nd/android/u/tast/lottery/util/LotResultPopDialog;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/Dialog/show()V
return
L2:
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/util/LotResultPopDialog/mContext Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_get_prise_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/tast/lottery/util/LotResultPopDialog/dismissDialogL()V
return
.limit locals 2
.limit stack 5
.end method
