.bytecode 50.0
.class synchronized com/common/android/utils/audio/AudioPlayer$1
.super java/lang/Object
.implements android/hardware/SensorEventListener
.enclosing method com/common/android/utils/audio/AudioPlayer
.inner class inner com/common/android/utils/audio/AudioPlayer$1

.field final synthetic 'this$0' Lcom/common/android/utils/audio/AudioPlayer;

.method <init>(Lcom/common/android/utils/audio/AudioPlayer;)V
aload 0
aload 1
putfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
invokestatic com/common/android/utils/audio/AudioPlayer/access$000(Lcom/common/android/utils/audio/AudioPlayer;)Z
ifeq L0
aload 1
getfield android/hardware/SensorEvent/values [F
iconst_0
faload
aload 0
getfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
invokestatic com/common/android/utils/audio/AudioPlayer/access$100(Lcom/common/android/utils/audio/AudioPlayer;)Landroid/hardware/Sensor;
invokevirtual android/hardware/Sensor/getMaximumRange()F
fcmpl
iflt L1
iconst_0
istore 2
L2:
aload 0
getfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
invokestatic com/common/android/utils/audio/AudioPlayer/access$200(Lcom/common/android/utils/audio/AudioPlayer;)Landroid/media/AudioManager;
iload 2
invokevirtual android/media/AudioManager/setMode(I)V
aload 0
getfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
invokestatic com/common/android/utils/audio/AudioPlayer/access$300(Lcom/common/android/utils/audio/AudioPlayer;)Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
ifnull L3
aload 0
getfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
invokestatic com/common/android/utils/audio/AudioPlayer/access$400(Lcom/common/android/utils/audio/AudioPlayer;)I
iload 2
if_icmpeq L3
aload 0
getfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
invokestatic com/common/android/utils/audio/AudioPlayer/access$300(Lcom/common/android/utils/audio/AudioPlayer;)Lcom/common/android/utils/audio/AudioPlayer$onModeChangedListener;
iload 2
invokeinterface com/common/android/utils/audio/AudioPlayer$onModeChangedListener/onModeChanged(I)V 1
L3:
aload 0
getfield com/common/android/utils/audio/AudioPlayer$1/this$0 Lcom/common/android/utils/audio/AudioPlayer;
iload 2
invokestatic com/common/android/utils/audio/AudioPlayer/access$402(Lcom/common/android/utils/audio/AudioPlayer;I)I
pop
L0:
return
L1:
iconst_2
istore 2
goto L2
.limit locals 3
.limit stack 2
.end method
