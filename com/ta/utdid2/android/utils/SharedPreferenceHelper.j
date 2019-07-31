.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/SharedPreferenceHelper
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 9
.end annotation
aload 0
ifnull L0
aload 0
invokeinterface android/content/SharedPreferences$Editor/apply()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method
