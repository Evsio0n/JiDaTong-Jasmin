.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;Ljava/lang/Void;Ljava/lang/String;>;"
.inner class private OpenGifts inner com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts outer com/nd/android/backpacksystem/data/GiftsProcess

.field private 'isSuccess' Z

.field private 'mAbstractRequestParams' Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;

.field private 'mActivity' Landroid/app/Activity;

.field private 'mDialogCallBack' Lcom/nd/android/backpacksystem/listener/DialogCallBack;

.field private 'mProgressDialog' Landroid/app/ProgressDialog;

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/data/GiftsProcess;

.method <init>(Lcom/nd/android/backpacksystem/data/GiftsProcess;Landroid/app/Activity;Lcom/nd/android/backpacksystem/listener/DialogCallBack;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/this$0 Lcom/nd/android/backpacksystem/data/GiftsProcess;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/isSuccess Z
aload 0
aload 2
putfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
aload 0
aload 3
putfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
return
.limit locals 4
.limit stack 2
.end method

.method private getResultContent(JLjava/util/List;)Ljava/lang/String;
.signature "(JLjava/util/List<Lcom/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse;>;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
lload 1
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getMyItem(J)Lcom/nd/android/backpacksystem/data/MyItems;
astore 5
aload 5
ifnull L0
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 5
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 5
aload 5
ifnull L0
aload 4
aload 5
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u793c\u5305\u4f7f\u7528\u6210\u529f"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 3
invokeinterface java/util/List/isEmpty()Z 0
ifne L1
aload 4
ldc "\uff0c\u83b7\u5f97\u4e86"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse
astore 5
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 5
getfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mItemType J
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 6
aload 6
ifnull L2
aload 4
aload 5
getfield com/nd/android/backpacksystem/serverinterface/impl/UseGifts$UseGiftsResponse/mAmount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
sipush 26421
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 6
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L1:
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 7
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;
invokevirtual com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/doInBackground([Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;)Ljava/lang/String;
aload 0
aload 1
iconst_0
aaload
putfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mAbstractRequestParams Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;
new com/nd/android/backpacksystem/serverinterface/impl/UseGifts
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/UseGifts/<init>()V
astore 2
aload 2
aload 2
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
aconst_null
aload 1
iconst_0
aaload
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/communicate(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Lcom/nd/android/backpacksystem/serverinterface/RequestResult; 3
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/resolveResponse(Lcom/nd/android/backpacksystem/serverinterface/RequestResult;)Lcom/nd/android/backpacksystem/serverinterface/ResolvedResponse; 1
astore 1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isObjectValid()Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/open_gifts_fail I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
areturn
L0:
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isSuccess()Z
ifeq L1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/getResolvedObj()Ljava/lang/Object;
checkcast java/util/List
astore 1
aload 0
iconst_1
putfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/isSuccess Z
aload 0
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mAbstractRequestParams Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;
getfield com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/mItemId J
aload 1
invokespecial com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/getResultContent(JLjava/util/List;)Ljava/lang/String;
areturn
L1:
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/getResolvedObj()Ljava/lang/Object;
astore 1
aload 1
instanceof java/lang/String
ifeq L2
aload 1
checkcast java/lang/String
areturn
L2:
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/open_gifts_fail I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/String
invokevirtual com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/onPostExecute(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/String;)V
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mProgressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
ifnull L1
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/isSuccess Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
aload 1
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
aconst_null
invokeinterface com/nd/android/backpacksystem/listener/DialogCallBack/doRefresh(Ljava/lang/Object;)V 1
return
L2:
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mDialogCallBack Lcom/nd/android/backpacksystem/listener/DialogCallBack;
invokeinterface com/nd/android/backpacksystem/listener/DialogCallBack/doFail()V 0
return
.limit locals 2
.limit stack 3
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
aconst_null
aload 0
getfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/open_gifts_please_wait I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
iconst_0
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
putfield com/nd/android/backpacksystem/data/GiftsProcess$OpenGifts/mProgressDialog Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 6
.end method
