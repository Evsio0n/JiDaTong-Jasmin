.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter
.super android/widget/BaseAdapter
.inner class MyAdapter inner com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter outer com/nd/android/u/cloud/view/widge/FunctionPopup
.inner class Holder inner com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder outer com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter

.field protected 'mContext' Landroid/content/Context;

.field protected 'pop' Landroid/widget/PopupWindow;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/FunctionPopup;

.method public <init>(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;Landroid/content/Context;Landroid/widget/PopupWindow;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/this$0 Lcom/nd/android/u/cloud/view/widge/FunctionPopup;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/mContext Landroid/content/Context;
aload 0
aload 3
putfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/pop Landroid/widget/PopupWindow;
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/this$0 Lcom/nd/android/u/cloud/view/widge/FunctionPopup;
invokestatic com/nd/android/u/cloud/view/widge/FunctionPopup/access$000(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
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
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903300
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder/<init>(Lcom/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter;)V
astore 3
aload 3
aload 2
ldc_w 2131625236
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder/textView Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131625237
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder/view Landroid/view/View;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder/textView Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/this$0 Lcom/nd/android/u/cloud/view/widge/FunctionPopup;
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/titles [Ljava/lang/String;
iload 1
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 1
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter/this$0 Lcom/nd/android/u/cloud/view/widge/FunctionPopup;
invokestatic com/nd/android/u/cloud/view/widge/FunctionPopup/access$000(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;)I
iconst_1
isub
if_icmpge L2
aload 3
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder/view Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$MyAdapter$Holder/view Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 2
areturn
.limit locals 4
.limit stack 3
.end method
