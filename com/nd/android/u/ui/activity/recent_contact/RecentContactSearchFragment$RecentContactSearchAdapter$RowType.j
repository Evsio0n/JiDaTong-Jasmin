.bytecode 50.0
.class final synchronized enum com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;>;"
.inner class private static RecentContactSearchAdapter inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.inner class private static final enum RowType inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;

.field public static final enum 'CONTACTS_ROW' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;

.field public static final enum 'NET_SEARCH_ROW' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;

.field public static final enum 'RECENT_CONTACT_ROW' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;

.field public static final enum 'SEARCH_TIP_ROW' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;

.field 'mValue' I

.method static <clinit>()V
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
dup
ldc "RECENT_CONTACT_ROW"
iconst_0
iconst_0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/RECENT_CONTACT_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
dup
ldc "CONTACTS_ROW"
iconst_1
iconst_1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/CONTACTS_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
dup
ldc "SEARCH_TIP_ROW"
iconst_2
iconst_2
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/SEARCH_TIP_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
dup
ldc "NET_SEARCH_ROW"
iconst_3
iconst_3
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
iconst_4
anewarray com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
dup
iconst_0
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/RECENT_CONTACT_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
aastore
dup
iconst_1
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/CONTACTS_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
aastore
dup
iconst_2
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/SEARCH_TIP_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
aastore
dup
iconst_3
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
aastore
putstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/$VALUES [Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
.signature "(I)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/mValue I
return
.limit locals 4
.limit stack 3
.end method

.method static value2Type(I)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/values()[Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aaload
astore 4
aload 4
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/mValue I
iload 0
if_icmpne L2
aload 4
areturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
ldc com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/$VALUES [Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
invokevirtual [Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
areturn
.limit locals 0
.limit stack 1
.end method
