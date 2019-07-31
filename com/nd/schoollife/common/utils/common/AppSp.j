.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/common/AppSp
.super java/lang/Object

.field private static final 'CONFIG_NAME' Ljava/lang/String; = "schoollife.cfg"

.field public static final 'FLAG_GET_MYRSS_INT' Ljava/lang/String; = "FLAG_GET_MYRSS_INT"

.field public static final 'FLAG_IS_NEED_REFRESH_FROM_COMMENTTAIL' Ljava/lang/String; = "FLAG_IS_NEED_REFRESH_FROM_COMMENTTAIL"

.field public static final 'FLAG_IS_NEED_REFRESH_FROM_POSTTAIL' Ljava/lang/String; = "FLAG_IS_NEED_REFRESH_FROM_POSTTAIL"

.field public static final 'TAG' Ljava/lang/String;

.field private static 'mInstance' Lcom/nd/schoollife/common/utils/common/AppSp;

.field private static 'mSharePreferences' Landroid/content/SharedPreferences;

.method static <clinit>()V
ldc com/nd/schoollife/common/utils/common/AppSp
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/common/utils/common/AppSp/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ldc "schoollife.cfg"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
return
.limit locals 2
.limit stack 3
.end method

.method public static getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
getstatic com/nd/schoollife/common/utils/common/AppSp/mInstance Lcom/nd/schoollife/common/utils/common/AppSp;
ifnonnull L0
new com/nd/schoollife/common/utils/common/AppSp
dup
aload 0
invokespecial com/nd/schoollife/common/utils/common/AppSp/<init>(Landroid/content/Context;)V
putstatic com/nd/schoollife/common/utils/common/AppSp/mInstance Lcom/nd/schoollife/common/utils/common/AppSp;
L0:
getstatic com/nd/schoollife/common/utils/common/AppSp/mInstance Lcom/nd/schoollife/common/utils/common/AppSp;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
aload 1
iload 2
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getInt(Ljava/lang/String;I)I
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
aload 1
iload 2
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getLong(Ljava/lang/String;J)J
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
aload 1
lload 2
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lreturn
.limit locals 4
.limit stack 4
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
aload 1
aload 2
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public isContains(Ljava/lang/String;)Z
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
aload 1
invokeinterface android/content/SharedPreferences/contains(Ljava/lang/String;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public removeCfgItem(Ljava/lang/String;)Z
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 1
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setValue(Ljava/lang/String;I)V
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 1
iload 2
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public setValue(Ljava/lang/String;J)V
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 1
lload 2
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 4
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 1
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public setValue(Ljava/lang/String;Z)V
getstatic com/nd/schoollife/common/utils/common/AppSp/mSharePreferences Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 1
iload 2
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method
