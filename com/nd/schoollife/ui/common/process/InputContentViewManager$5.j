.bytecode 50.0
.class synchronized com/nd/schoollife/ui/common/process/InputContentViewManager$5
.super java/lang/Object
.implements com/common/android/utils/smiley/SmileyView$GetWordLengthConfig
.enclosing method com/nd/schoollife/ui/common/process/InputContentViewManager/showCommentView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Ljava/lang/String;Ljava/lang/String;)V
.inner class inner com/nd/schoollife/ui/common/process/InputContentViewManager$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.method <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/process/InputContentViewManager$5/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getWorldLength(Ljava/lang/String;)F
aload 1
iconst_1
aload 0
getfield com/nd/schoollife/ui/common/process/InputContentViewManager$5/this$0 Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokestatic com/nd/schoollife/ui/common/process/InputContentViewManager/access$1400(Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)I
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
iconst_0
faload
freturn
.limit locals 2
.limit stack 3
.end method
