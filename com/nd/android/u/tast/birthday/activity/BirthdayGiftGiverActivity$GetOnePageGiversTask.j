.bytecode 50.0
.class synchronized com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;>;"
.inner class private GetOnePageGiversTask inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask outer com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;

.method private <init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/<init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/doInBackground([Ljava/lang/Void;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/List;
.signature "([Ljava/lang/Void;)Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new com/nd/android/u/tast/com/OapBirthdayCom
dup
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/<init>()V
astore 6
iconst_0
istore 2
L6:
iload 2
i2l
lstore 4
L0:
lload 4
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$800(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)J
lcmp
ifge L7
aload 6
aload 1
invokeinterface java/util/List/size()I 0
bipush 100
idiv
iconst_1
iadd
bipush 100
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/getmyblesslistlist(II)Ljava/util/List;
astore 7
L1:
aload 7
ifnull L4
L3:
aload 1
aload 7
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L4:
aload 1
invokeinterface java/util/List/size()I 0
istore 3
L5:
iload 3
istore 2
iload 3
sipush 500
if_icmplt L6
L7:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 8
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/birthday/dataStructure/Myblesslist;>;)V"
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$1700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
ifnonnull L0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/getApplicationContext()Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
getstatic com/nd/android/u/tasklib/R$string/network_error_to_set_network I
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/getText(I)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$300(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
aload 1
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$702(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$1200(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$500(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/dataStructure/Myblesslist
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getUsername()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iconst_1
istore 2
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
L2:
iload 2
iload 3
if_icmpge L3
aload 1
ldc "\u3001"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/birthday/dataStructure/Myblesslist
invokevirtual com/nd/android/u/tast/birthday/dataStructure/Myblesslist/getUsername()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$100(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$100(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$000(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)I
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$200(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)I
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/changeGivers(Landroid/widget/TextView;IILjava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 6
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$GetOnePageGiversTask/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$1700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 2
.end method
