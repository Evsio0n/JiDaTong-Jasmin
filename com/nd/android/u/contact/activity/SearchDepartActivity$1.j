.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchDepartActivity$1
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/contact/activity/SearchDepartActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/SearchDepartActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchDepartActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 1
ifnull L0
ldc ""
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByName(Ljava/lang/String;)Ljava/util/List; 1
astore 3
aload 3
invokeinterface java/util/List/size()I 0
ifne L1
aload 2
invokeinterface java/util/List/size()I 0
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$000(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$000(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
getstatic com/nd/android/u/contact/R$string/noresult_unit_search I
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 3
aload 2
new com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode
dup
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
aload 3
invokespecial com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/<init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$000(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L2
L4:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$100(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;
aload 2
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/setList(Ljava/util/List;)V
L5:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$100(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/notifyDataSetChanged()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$100(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;
aconst_null
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/setList(Ljava/util/List;)V
goto L5
.limit locals 4
.limit stack 6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method
