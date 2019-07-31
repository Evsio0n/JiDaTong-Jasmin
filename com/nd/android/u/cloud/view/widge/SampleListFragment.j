.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/SampleListFragment
.super android/support/v4/app/ListFragment
.inner class public SampleAdapter inner com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter outer com/nd/android/u/cloud/view/widge/SampleListFragment
.inner class private SampleItem inner com/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem outer com/nd/android/u/cloud/view/widge/SampleListFragment

.method public <init>()V
aload 0
invokespecial android/support/v4/app/ListFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/ListFragment/onActivityCreated(Landroid/os/Bundle;)V
new com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter
dup
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/SampleListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter/<init>(Lcom/nd/android/u/cloud/view/widge/SampleListFragment;Landroid/content/Context;)V
astore 1
iconst_0
istore 2
L0:
iload 2
bipush 20
if_icmpge L1
aload 1
new com/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem
dup
aload 0
ldc "Sample List"
ldc_w 17301583
invokespecial com/nd/android/u/cloud/view/widge/SampleListFragment$SampleItem/<init>(Lcom/nd/android/u/cloud/view/widge/SampleListFragment;Ljava/lang/String;I)V
invokevirtual com/nd/android/u/cloud/view/widge/SampleListFragment$SampleAdapter/add(Ljava/lang/Object;)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/view/widge/SampleListFragment/setListAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 3
.limit stack 6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
ldc_w 2130903716
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 3
.end method
