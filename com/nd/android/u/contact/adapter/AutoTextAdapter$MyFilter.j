.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter
.super android/widget/Filter
.inner class MyFilter inner com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter outer com/nd/android/u/contact/adapter/AutoTextAdapter

.field 'm_saContains' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/AutoTextAdapter;

.method public <init>(Lcom/nd/android/u/contact/adapter/AutoTextAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/this$0 Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 0
invokespecial android/widget/Filter/<init>()V
aload 0
aload 1
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
putfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/m_saContains Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
new android/widget/Filter$FilterResults
dup
invokespecial android/widget/Filter$FilterResults/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/m_saContains Ljava/util/ArrayList;
ifnull L0
aload 1
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/m_saContains Ljava/util/ArrayList;
putfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
aload 1
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/m_saContains Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
putfield android/widget/Filter$FilterResults/count I
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
aload 2
ifnull L0
aload 1
ifnonnull L1
L0:
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/this$0 Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/this$0 Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L2:
return
L1:
aload 2
getfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
checkcast java/util/ArrayList
astore 2
aload 2
ifnull L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 3
L3:
iload 3
aload 2
invokevirtual java/util/ArrayList/size()I
if_icmpge L4
aload 4
aload 2
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/this$0 Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 4
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/this$0 Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
putfield com/nd/android/u/contact/adapter/AutoTextAdapter/tempKeyString Ljava/lang/String;
return
.limit locals 5
.limit stack 3
.end method

.method public resetContains()V
aload 0
aload 0
getfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/this$0 Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
getfield com/nd/android/u/contact/adapter/AutoTextAdapter/m_saDropDownItems Ljava/util/ArrayList;
putfield com/nd/android/u/contact/adapter/AutoTextAdapter$MyFilter/m_saContains Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 2
.end method
