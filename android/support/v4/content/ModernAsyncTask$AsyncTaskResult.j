.bytecode 50.0
.class synchronized android/support/v4/content/ModernAsyncTask$AsyncTaskResult
.super java/lang/Object
.signature "<Data:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class private static AsyncTaskResult inner android/support/v4/content/ModernAsyncTask$AsyncTaskResult outer android/support/v4/content/ModernAsyncTask

.field final 'mData' [Ljava/lang/Object; signature "[TData;"

.field final 'mTask' Landroid/support/v4/content/ModernAsyncTask;

.method transient <init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
.signature "(Landroid/support/v4/content/ModernAsyncTask;[TData;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/content/ModernAsyncTask$AsyncTaskResult/mTask Landroid/support/v4/content/ModernAsyncTask;
aload 0
aload 2
putfield android/support/v4/content/ModernAsyncTask$AsyncTaskResult/mData [Ljava/lang/Object;
return
.limit locals 3
.limit stack 2
.end method
