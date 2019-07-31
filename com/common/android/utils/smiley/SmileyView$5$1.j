.bytecode 50.0
.class synchronized com/common/android/utils/smiley/SmileyView$5$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/smiley/SmileyView$5/onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.inner class inner com/common/android/utils/smiley/SmileyView$5
.inner class inner com/common/android/utils/smiley/SmileyView$5$1

.field final synthetic 'this$1' Lcom/common/android/utils/smiley/SmileyView$5;

.field final synthetic 'val$smiley' Lcom/common/android/utils/smiley/Smiley;

.method <init>(Lcom/common/android/utils/smiley/SmileyView$5;Lcom/common/android/utils/smiley/Smiley;)V
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyView$5$1/this$1 Lcom/common/android/utils/smiley/SmileyView$5;
aload 0
aload 2
putfield com/common/android/utils/smiley/SmileyView$5$1/val$smiley Lcom/common/android/utils/smiley/Smiley;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/common/android/utils/smiley/SmileyView$5$1/val$smiley Lcom/common/android/utils/smiley/Smiley;
invokestatic java/lang/System/currentTimeMillis()J
putfield com/common/android/utils/smiley/Smiley/lastUsedTime J
invokestatic com/common/android/utils/db/CommonDaoFactory/getInstance()Lcom/common/android/utils/db/CommonDaoFactory;
invokevirtual com/common/android/utils/db/CommonDaoFactory/getSmileyHistoryDao()Lcom/common/android/utils/smiley/SmileyHistoryDao;
aload 0
getfield com/common/android/utils/smiley/SmileyView$5$1/val$smiley Lcom/common/android/utils/smiley/Smiley;
bipush 24
invokevirtual com/common/android/utils/smiley/SmileyHistoryDao/insertSmiley(Lcom/common/android/utils/smiley/Smiley;I)J
ldc2_w -1L
lcmp
ifne L0
return
L0:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
invokevirtual com/common/android/utils/smiley/Smileyhelper/refreshHistorySmiley()V
return
.limit locals 1
.limit stack 4
.end method
