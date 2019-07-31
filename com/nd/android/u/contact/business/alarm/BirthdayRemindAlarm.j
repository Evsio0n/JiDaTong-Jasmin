.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/alarm/BirthdayRemindAlarm
.super java/lang/Object

.field public static final 'ACTION_BIRTHDAYREMIND' Ljava/lang/String; = "com.nd.android.u.cloud.alarm.birthday"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static getBroadcastPendingIntent()Landroid/app/PendingIntent;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/business/alarm/BirthdayRemindReceiver
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "com.nd.android.u.cloud.alarm.birthday"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
iconst_0
aload 1
iconst_0
invokestatic android/app/PendingIntent/getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static startAlarm()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 0
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
astore 1
aload 1
iconst_5
aload 1
iconst_5
invokevirtual java/util/Calendar/get(I)I
iconst_1
iadd
invokevirtual java/util/Calendar/set(II)V
aload 1
bipush 11
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 1
bipush 12
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 1
bipush 13
iconst_0
invokevirtual java/util/Calendar/set(II)V
aload 0
ldc "alarm"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/AlarmManager
iconst_0
aload 1
invokevirtual java/util/Calendar/getTimeInMillis()J
invokestatic com/nd/android/u/contact/business/alarm/BirthdayRemindAlarm/getBroadcastPendingIntent()Landroid/app/PendingIntent;
invokevirtual android/app/AlarmManager/set(IJLandroid/app/PendingIntent;)V
return
.limit locals 2
.limit stack 5
.end method

.method public static stopAlarm()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc "alarm"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/AlarmManager
invokestatic com/nd/android/u/contact/business/alarm/BirthdayRemindAlarm/getBroadcastPendingIntent()Landroid/app/PendingIntent;
invokevirtual android/app/AlarmManager/cancel(Landroid/app/PendingIntent;)V
return
.limit locals 0
.limit stack 2
.end method
