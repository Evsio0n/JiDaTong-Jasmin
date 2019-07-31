.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter
.super android/widget/ArrayAdapter
.signature "Landroid/widget/ArrayAdapter<Lcom/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem;>;"
.inner class public SampleAdapter inner com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter outer com/nd/android/u/cloud/view/widge/SampleListFragment

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/SampleListFragment;

.method public <init>(Lcom/nd/android/u/cloud/view/widge/SampleListFragment;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter/this$0 Lcom/nd/android/u/cloud/view/widge/SampleListFragment;
aload 0
aload 2
iconst_0
invokespecial android/widget/ArrayAdapter/<init>(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903717
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
L0:
aload 3
ldc_w 2131626703
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem
getfield com/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem/iconRes I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 3
ldc_w 2131626704
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem
getfield com/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem/tag Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method
