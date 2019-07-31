.bytecode 50.0
.class synchronized android/support/v4/content/LocalBroadcastManager$BroadcastRecord
.super java/lang/Object
.inner class private static BroadcastRecord inner android/support/v4/content/LocalBroadcastManager$BroadcastRecord outer android/support/v4/content/LocalBroadcastManager

.field final 'intent' Landroid/content/Intent;

.field final 'receivers' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"

.method <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Intent;Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/content/LocalBroadcastManager$BroadcastRecord/intent Landroid/content/Intent;
aload 0
aload 2
putfield android/support/v4/content/LocalBroadcastManager$BroadcastRecord/receivers Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 2
.end method
