.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;"
.inner class ScrollTask inner com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask outer com/nd/android/u/contact/view/FriendGroupManagerView

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/FriendGroupManagerView;

.method <init>(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$000(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
getfield android/view/ViewGroup$MarginLayoutParams/rightMargin I
istore 2
L0:
iload 2
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
iadd
istore 2
iload 2
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$100(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
if_icmple L1
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$100(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
istore 2
L2:
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
ifle L3
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
iconst_1
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$402(Lcom/nd/android/u/contact/view/FriendGroupManagerView;Z)Z
pop
L4:
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
iconst_0
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$502(Lcom/nd/android/u/contact/view/FriendGroupManagerView;Z)Z
pop
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L1:
iload 2
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$200(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
ineg
if_icmpge L5
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$200(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
ineg
istore 2
goto L2
L5:
aload 0
iconst_1
anewarray java/lang/Integer
dup
iconst_0
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/publishProgress([Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
aload 1
iconst_1
aaload
invokevirtual java/lang/Integer/intValue()I
i2l
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$300(Lcom/nd/android/u/contact/view/FriendGroupManagerView;J)V
goto L0
L3:
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
iconst_0
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$402(Lcom/nd/android/u/contact/view/FriendGroupManagerView;Z)Z
pop
goto L4
.limit locals 3
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$000(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
aload 1
invokevirtual java/lang/Integer/intValue()I
putfield android/view/ViewGroup$MarginLayoutParams/rightMargin I
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$600(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$000(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$700(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$200(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
ineg
aload 1
invokevirtual java/lang/Integer/intValue()I
isub
putfield android/view/ViewGroup$MarginLayoutParams/leftMargin I
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$800(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$700(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Ljava/lang/Integer;)V
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$000(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
putfield android/view/ViewGroup$MarginLayoutParams/rightMargin I
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$600(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$000(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$700(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$200(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)I
ineg
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
isub
putfield android/view/ViewGroup$MarginLayoutParams/leftMargin I
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$800(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/this$0 Lcom/nd/android/u/contact/view/FriendGroupManagerView;
invokestatic com/nd/android/u/contact/view/FriendGroupManagerView/access$700(Lcom/nd/android/u/contact/view/FriendGroupManagerView;)Landroid/view/ViewGroup$MarginLayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/android/u/contact/view/FriendGroupManagerView$ScrollTask/onProgressUpdate([Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
