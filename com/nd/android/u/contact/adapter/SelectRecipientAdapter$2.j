.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/SelectRecipientAdapter$2
.super android/widget/Filter
.enclosing method com/nd/android/u/contact/adapter/SelectRecipientAdapter/getFilter()Landroid/widget/Filter;
.inner class inner com/nd/android/u/contact/adapter/SelectRecipientAdapter$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SelectRecipientAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 0
invokespecial android/widget/Filter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
ldc "SelectRecipientAdapter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Filters: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
new android/widget/Filter$FilterResults
dup
invokespecial android/widget/Filter$FilterResults/<init>()V
astore 3
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iconst_0
bipush 20
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 4
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getSearchContracByKeySize(Ljava/lang/String;)I 1
istore 2
aload 3
aload 4
putfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
aload 3
iload 2
putfield android/widget/Filter$FilterResults/count I
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
aload 2
getfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
checkcast java/util/ArrayList
astore 1
aload 2
getfield android/widget/Filter$FilterResults/count I
istore 3
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokestatic com/nd/android/u/contact/adapter/SelectRecipientAdapter/access$000(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokestatic com/nd/android/u/contact/adapter/SelectRecipientAdapter/access$000(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokestatic com/nd/android/u/contact/adapter/SelectRecipientAdapter/access$100(Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Landroid/os/Handler;
iload 3
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/adapter/SelectRecipientAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 2
.end method
