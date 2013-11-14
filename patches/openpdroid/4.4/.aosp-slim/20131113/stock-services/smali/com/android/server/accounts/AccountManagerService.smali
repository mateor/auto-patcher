.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static final TIMEOUT_DELAY_MS:I = 0xea60

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v2

    const-string v1, "count(type)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v2

    const-string v1, "authtoken"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
    .registers 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/pm/PackageManager;
    .param p3    # Lcom/android/server/accounts/IAccountAuthenticatorCache;

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p0, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 3
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;

    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .registers 6
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Landroid/content/Intent;
    .param p5    # I

    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0    # Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;
    .registers 2
    .param p0    # Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    .registers 2
    .param p0    # Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .registers 4
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;

    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .registers 2
    .param p0    # Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserStarted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;II)Z
    .registers 5
    .param p0    # Lcom/android/server/accounts/AccountManagerService;
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/Account;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(I)Ljava/lang/String;
    .registers 2
    .param p0    # I

    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .registers 23
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Z

    if-nez p2, :cond_4

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_4
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_9
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_57

    :try_start_14
    const-string v2, "select count(*) from accounts WHERE name=? AND type=?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v3, v2, v13}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-lez v2, :cond_5a

    const-string v2, "AccountManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertAccountIntoDatabase: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", skipping since the account already exists"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_123

    const/4 v2, 0x0

    :try_start_52
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v12

    goto :goto_3

    :catchall_57
    move-exception v2

    monitor-exit v12
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw v2

    :cond_5a
    :try_start_5a
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password"

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accounts"

    const-string v13, "name"

    invoke-virtual {v3, v2, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v13, 0x0

    cmp-long v2, v4, v13

    if-gez v2, :cond_ad

    const-string v2, "AccountManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertAccountIntoDatabase: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", skipping the DB insert failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_5a .. :try_end_a6} :catchall_123

    const/4 v2, 0x0

    :try_start_a7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v12
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_57

    goto/16 :goto_3

    :cond_ad
    if-eqz p4, :cond_100

    :try_start_af
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-gez v2, :cond_b7

    const-string v2, "AccountManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertAccountIntoDatabase: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", skipping since insertExtra failed for key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_af .. :try_end_f9} :catchall_123

    const/4 v2, 0x0

    :try_start_fa
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v12
    :try_end_fe
    .catchall {:try_start_fa .. :try_end_fe} :catchall_57

    goto/16 :goto_3

    :cond_100
    :try_start_100
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    :try_end_106
    .catchall {:try_start_100 .. :try_end_106} :catchall_123

    :try_start_106
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    monitor-exit v12
    :try_end_113
    .catchall {:try_start_106 .. :try_end_113} :catchall_57

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    if-nez v2, :cond_120

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLimitedUsers(Landroid/accounts/Account;)V

    :cond_120
    const/4 v2, 0x1

    goto/16 :goto_3

    :catchall_123
    move-exception v2

    :try_start_124
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_128
    .catchall {:try_start_124 .. :try_end_128} :catchall_57
.end method

.method private addAccountToLimitedUsers(Landroid/accounts/Account;)V
    .registers 10
    .param p1    # Landroid/accounts/Account;

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    :try_start_23
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v5, 0x4

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3f} :catch_40

    goto :goto_c

    :catch_40
    move-exception v3

    goto :goto_c

    :cond_42
    return-void
.end method

.method private canUserModifyAccounts(I)Z
    .registers 5
    .param p1    # I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p1, v0, :cond_21

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "no_modify_accounts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V
    .registers 5
    .param p1    # Landroid/accounts/Account;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.AUTHENTICATE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V

    return-void
.end method

.method private varargs checkBinderPermission([Ljava/lang/String;)V
    .registers 11
    .param p1    # [Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_42

    aget-object v4, v0, v1

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3e

    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  caller uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lacks any of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V
    .registers 7
    .param p1    # Landroid/accounts/Account;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eqz p1, :cond_e

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_32

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different than the authenticator\'s uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is the same as the authenticator\'s uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method

.method private checkManageAccountsOrUseCredentialsPermissions()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.USE_CREDENTIALS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    return-void
.end method

.method private checkManageAccountsPermission()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    return-void
.end method

.method private checkReadAccountsPermission()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    return-void
.end method

.method private copyAccountToUser(Landroid/accounts/Account;II)Z
    .registers 15
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v8

    if-eqz v2, :cond_d

    if-nez v8, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_12
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$3;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$3;->bind()V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_26

    invoke-static {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    goto :goto_d

    :catchall_26
    move-exception v0

    invoke-static {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    .registers 21
    .param p1    # Landroid/accounts/Account;
    .param p2    # Landroid/content/Intent;
    .param p3    # I

    const-string v2, "uid"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v2, "authTokenType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "authTokenLabel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10404bb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    move-object v13, v14

    const-string v12, ""

    if-lez v10, :cond_4f

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_4f
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v13, v12, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v15}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v7}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .registers 23
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Landroid/content/Intent;
    .param p5    # I

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_4
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doNotification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5c

    const-class v4, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_bb

    :goto_58
    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :cond_5c
    :try_start_5c
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v12, Landroid/app/Notification;

    const v4, 0x108008a

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v12, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p5

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10400bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    move-object/from16 v6, p4

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v12, v15, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v9}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_ba
    .catchall {:try_start_5c .. :try_end_ba} :catchall_bb

    goto :goto_58

    :catchall_bb
    move-exception v4

    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 27
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Ljava/io/FileDescriptor;
    .param p3    # Ljava/io/PrintWriter;
    .param p4    # [Ljava/lang/String;
    .param p5    # Z

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz p5, :cond_5b

    const-string v4, "accounts"

    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "type"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_51

    move-result-object v14

    :goto_1d
    :try_start_1d
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_54

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_4a

    goto :goto_1d

    :catchall_4a
    move-exception v4

    if-eqz v14, :cond_50

    :try_start_4d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v4

    :catchall_51
    move-exception v4

    monitor-exit v20
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    throw v4

    :cond_54
    if-eqz v14, :cond_59

    :try_start_56
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_59
    :goto_59
    monitor-exit v20

    return-void

    :cond_5b
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accounts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v13, v12

    array-length v0, v13

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_87
    move/from16 v0, v16

    if-ge v15, v0, :cond_a8

    aget-object v11, v13, v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_87

    :cond_a8
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v5
    :try_end_b0
    .catchall {:try_start_56 .. :try_end_b0} :catchall_51

    :try_start_b0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active Sessions: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/accounts/AccountManagerService$Session;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e0

    :catchall_10d
    move-exception v4

    monitor-exit v5
    :try_end_10f
    .catchall {:try_start_b0 .. :try_end_10f} :catchall_10d

    :try_start_10f
    throw v4
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_51

    :cond_110
    :try_start_110
    monitor-exit v5
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10d

    :try_start_111
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v4, v0, v1, v2, v5}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    :try_end_125
    .catchall {:try_start_111 .. :try_end_125} :catchall_51

    goto/16 :goto_59
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 28
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # [Landroid/accounts/Account;
    .param p3    # I
    .param p4    # Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v21

    if-eqz v21, :cond_18

    if-eqz p1, :cond_18

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v21

    if-ltz v21, :cond_18

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    :cond_18
    :goto_18
    return-object p2

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    if-eqz v19, :cond_18

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x104003a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v5, v14

    array-length v11, v5

    const/4 v9, 0x0

    :goto_51
    if-ge v9, v11, :cond_79

    aget-object v13, v5, v9

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_18

    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    :cond_79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v18

    if-eqz v18, :cond_18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_18

    const-string v16, ""

    if-eqz p4, :cond_d3

    :try_start_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    if-eqz v15, :cond_b5

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b5

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_b5} :catch_124

    :cond_b5
    :goto_b5
    move-object/from16 v5, p2

    array-length v11, v5

    const/4 v9, 0x0

    move v10, v9

    :goto_ba
    if-ge v10, v11, :cond_115

    aget-object v3, v5, v10

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_fa

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    :goto_cf
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_ba

    :cond_d3
    move-object v5, v14

    :try_start_d4
    array-length v11, v5

    const/4 v9, 0x0

    :goto_d6
    if-ge v9, v11, :cond_b5

    aget-object v13, v5, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    if-eqz v15, :cond_f7

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f7

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_f6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d4 .. :try_end_f6} :catch_124

    goto :goto_b5

    :cond_f7
    add-int/lit8 v9, v9, 0x1

    goto :goto_d6

    :cond_fa
    const/4 v8, 0x0

    move-object/from16 v6, v18

    array-length v12, v6

    const/4 v9, 0x0

    :goto_ff
    if-ge v9, v12, :cond_10c

    aget-object v17, v6, v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_112

    const/4 v8, 0x1

    :cond_10c
    if-nez v8, :cond_cf

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    :cond_112
    add-int/lit8 v9, v9, 0x1

    goto :goto_ff

    :cond_115
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [Landroid/accounts/Account;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 p2, v7

    goto/16 :goto_18

    :catch_124
    move-exception v21

    goto :goto_b5
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .registers 12
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Landroid/accounts/Account;

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_34

    move-result-wide v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2d
    return-wide v0

    :cond_2e
    const-wide/16 v0, -0x1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2d

    :catchall_34
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .registers 15
    .param p1    # [I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    move-object v3, p1

    array-length v5, v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_39

    aget v8, v3, v4

    invoke-virtual {p0, v8}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    if-nez v7, :cond_14

    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    const/4 v9, 0x0

    :try_start_1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v7, v9, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const/4 v0, 0x0

    :goto_24
    array-length v9, v1

    if-ge v0, v9, :cond_34

    new-instance v9, Landroid/accounts/AccountAndUser;

    aget-object v11, v1, v0

    invoke-direct {v9, v11, v8}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_34
    monitor-exit v10

    goto :goto_11

    :catchall_36
    move-exception v9

    monitor-exit v10
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_36

    throw v9

    :cond_39
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/accounts/AccountAndUser;

    return-object v9
.end method

.method private getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;
    .registers 12
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-eq p2, v4, :cond_41

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v1, v4, :cond_41

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_41

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trying to get account for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_41
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7e

    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccounts: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    const/4 v4, -0x1

    if-eq p4, v4, :cond_8c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v1, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_8c

    move v1, p4

    :cond_8c
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermission()V

    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_97
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_a8

    :try_start_9c
    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_a5

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_a5
    move-exception v4

    :try_start_a6
    monitor-exit v5
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_d
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_38

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    monitor-exit v4

    return-object v1

    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method private static getDatabaseName(I)Ljava/lang/String;
    .registers 8
    .param p0    # I

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "accounts.db"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p0, :cond_6c

    new-instance v1, Ljava/io/File;

    const-string v4, "accounts.db"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6c

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_4d

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4d
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6c

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be migrated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6c
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .registers 14
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # J
    .param p4    # Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_3b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_50

    move-result-wide v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_49
    return-wide v0

    :cond_4a
    const-wide/16 v0, -0x1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_49

    :catchall_50
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .registers 6
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_22

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    monitor-exit v2

    return-object v0

    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    :cond_c
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 13
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    if-eqz p1, :cond_4

    if-nez p2, :cond_11

    :cond_4
    const-string v5, "AccountManagerService"

    const-string v6, "grantAppPermission: called with invalid arguments"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void

    :cond_11
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_72

    :try_start_29
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-ltz v5, :cond_59

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "auth_token_type"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "grants"

    const-string v7, "accounts_id"

    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_59
    .catchall {:try_start_29 .. :try_end_59} :catchall_75

    :cond_59
    :try_start_59
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v7, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    monitor-exit v6

    goto :goto_10

    :catchall_72
    move-exception v5

    monitor-exit v6
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_72

    throw v5

    :catchall_75
    move-exception v5

    :try_start_76
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_72
.end method

.method private handleIncomingUser(I)I
    .registers 10
    .param p1    # I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    move-result p1

    :goto_16
    return p1

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method private hasAuthenticatorUid(Ljava/lang/String;I)Z
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, v0}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-eq v3, p2, :cond_35

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v3, v5, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-nez v3, :cond_37

    :cond_35
    const/4 v3, 0x1

    :goto_36
    return v3

    :cond_37
    move v3, v4

    goto :goto_36

    :cond_39
    move v3, v4

    goto :goto_36
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 14
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    if-ne p3, v5, :cond_8

    move v3, v4

    :goto_7
    return v3

    :cond_8
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_11
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    aput-object p2, v1, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x3

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v1, v6

    const-string v6, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v2, v6, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3d

    move v3, v4

    :cond_3d
    if-nez v3, :cond_7a

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v6

    if-eqz v6, :cond_7a

    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no credentials permission for usage of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but ignoring since device is in test harness."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    move v3, v4

    goto :goto_7

    :cond_7a
    monitor-exit v5

    goto :goto_7

    :catchall_7c
    move-exception v4

    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_11 .. :try_end_7e} :catchall_7c

    throw v4
.end method

.method private initUserLocked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    :cond_1d
    return-object v0
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 9
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;

    const/4 v3, 0x0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-eqz v0, :cond_25

    array-length v2, v0

    :goto_10
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Landroid/accounts/Account;

    if-eqz v0, :cond_19

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    aput-object p2, v1, v2

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_25
    move v2, v3

    goto :goto_10
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .registers 9
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extras"

    const-string v2, "key"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_7

    if-nez p3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string v0, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_14
    :try_start_14
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_14 .. :try_end_4e} :catchall_4f

    goto :goto_14

    :catchall_4f
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_54
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method

.method private isPrivileged(I)Z
    .registers 16
    .param p1    # I

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :try_start_5
    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_16} :catch_34

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v4, :cond_33

    aget-object v5, v0, v3

    const/4 v10, 0x0

    :try_start_23
    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_38

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2d} :catch_36

    const/high16 v11, 0x40000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_38

    const/4 v9, 0x1

    :cond_33
    :goto_33
    return v9

    :catch_34
    move-exception v2

    goto :goto_33

    :catch_36
    move-exception v2

    goto :goto_33

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, p4, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 8
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Landroid/os/Bundle;

    const/4 v4, 0x2

    if-nez p2, :cond_f

    const-string v1, "AccountManagerService"

    const-string v2, "the result is unexpectedly null"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :try_start_3b
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "AccountManagerService"

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Intent;

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_e
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_2b

    if-nez v0, :cond_2e

    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_a

    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v3

    :cond_2e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_33
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->close()V

    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    monitor-exit v4

    goto :goto_a

    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_48

    throw v3
.end method

.method private onUserStarted(Landroid/content/Intent;)V
    .registers 11
    .param p1    # Landroid/content/Intent;

    const-string v7, "android.intent.extra.user_handle"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_a

    array-length v7, v5

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v0

    move-object v1, v5

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v3, :cond_a

    aget-object v4, v1, v2

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    const/4 v7, 0x0

    invoke-direct {p0, v4, v7, v6}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/Account;II)Z

    goto :goto_26
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 12
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v2

    if-eqz p1, :cond_61

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_61

    move v0, v3

    :goto_11
    if-eqz p1, :cond_63

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    move v1, v3

    :goto_1a
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_59

    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkGrantsOrCallingUidAgainstAuthenticator: caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": is authenticator? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", has explicit permission? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    if-nez v0, :cond_5f

    if-nez v1, :cond_5f

    if-eqz v2, :cond_60

    :cond_5f
    move v4, v3

    :cond_60
    return v4

    :cond_61
    move v0, v4

    goto :goto_11

    :cond_63
    move v1, v4

    goto :goto_1a
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 16
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_7
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "grants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "uid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_6e

    move-result-object v8

    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_71

    move v9, v11

    :goto_37
    if-nez v9, :cond_23

    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting grants for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because its package is no longer installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "grants"

    const-string v2, "uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_23 .. :try_end_68} :catchall_69

    goto :goto_23

    :catchall_69
    move-exception v1

    :try_start_6a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :catchall_6e
    move-exception v1

    monitor-exit v13
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_6e

    throw v1

    :cond_71
    move v9, v12

    goto :goto_37

    :cond_73
    :try_start_73
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    monitor-exit v13
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_6e

    return-void
.end method

.method private purgeOldGrantsAll()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    monitor-exit v2

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 14
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;

    const/4 v9, 0x0

    if-nez p2, :cond_5

    move-object v1, v9

    :goto_4
    return-object v1

    :cond_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_a
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "password"

    aput-object v4, v2, v3

    const-string v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_42

    move-result-object v8

    :try_start_32
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_4b

    move-result-object v1

    :try_start_3d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    monitor-exit v10

    goto :goto_4

    :catchall_42
    move-exception v1

    monitor-exit v10
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_42

    throw v1

    :cond_45
    :try_start_45
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    monitor-exit v10

    move-object v1, v9

    goto :goto_4

    :catchall_4b
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_42
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 12
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/Account;

    if-eqz v6, :cond_35

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v3, :cond_26

    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_44

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    :goto_35
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_44
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Landroid/accounts/Account;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 15
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v6, "accounts"

    const-string v8, "name=? AND type=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_64

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    if-nez v6, :cond_6a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_36
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_41

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_41

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v6}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_5f

    goto :goto_41

    :catchall_5f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catchall_64
    move-exception v6

    :try_start_65
    monitor-exit v7
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v6

    :cond_67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6a
    return-void
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 14
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    if-eqz p1, :cond_4

    if-nez p2, :cond_11

    :cond_4
    const-string v4, "AccountManagerService"

    const-string v5, "revokeAppPermission: called with invalid arguments"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void

    :cond_11
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_6a

    :try_start_29
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-ltz v4, :cond_51

    const-string v4, "grants"

    const-string v6, "accounts_id=? AND auth_token_type=? AND uid=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_51
    .catchall {:try_start_29 .. :try_end_51} :catchall_6d

    :cond_51
    :try_start_51
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    monitor-exit v5

    goto :goto_10

    :catchall_6a
    move-exception v4

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_51 .. :try_end_6c} :catchall_6a

    throw v4

    :catchall_6d
    move-exception v4

    :try_start_6e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_6a
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_1f
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_3a

    :try_start_2a
    invoke-direct {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_ac

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_3d

    const/4 v0, 0x0

    :try_start_35
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v9

    goto :goto_5

    :catchall_3a
    move-exception v0

    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :try_start_3d
    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "accounts_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "type"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authtoken"

    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authtokens"

    const-string v1, "authtoken"

    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_a5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_3d .. :try_end_9e} :catchall_ac

    const/4 v0, 0x1

    :try_start_9f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v9

    goto/16 :goto_5

    :cond_a5
    const/4 v0, 0x0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v9

    goto/16 :goto_5

    :catchall_ac
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_b1
    .catchall {:try_start_9f .. :try_end_b1} :catchall_3a
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0    # [Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_14

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_10
    return v4

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private sendAccountsChangedBroadcast(I)V
    .registers 5
    .param p1    # I

    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 13
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_8
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_55

    :try_start_13
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "password"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-ltz v5, :cond_49

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v5, "accounts"

    const-string v7, "_id=?"

    invoke-virtual {v3, v5, v4, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v5, "authtokens"

    const-string v7, "accounts_id=?"

    invoke-virtual {v3, v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_58

    :cond_49
    :try_start_49
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    monitor-exit v6

    goto :goto_2

    :catchall_55
    move-exception v5

    monitor-exit v6
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_55

    throw v5

    :catchall_58
    move-exception v5

    :try_start_59
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_55
.end method

.method private setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_a
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_26

    :try_start_15
    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_8d

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_29

    :try_start_21
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v14

    goto :goto_4

    :catchall_26
    move-exception v1

    monitor-exit v14
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw v1

    :cond_29
    :try_start_29
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/android/server/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v11

    const-wide/16 v5, 0x0

    cmp-long v1, v11, v5

    if-gez v1, :cond_49

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_8d

    move-result-wide v11

    const-wide/16 v5, 0x0

    cmp-long v1, v11, v5

    if-gez v1, :cond_77

    :try_start_44
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v14
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_26

    goto :goto_4

    :cond_49
    :try_start_49
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    move-object/from16 v0, p4

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v5, "extras"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_8d

    move-result v5

    if-eq v1, v5, :cond_77

    :try_start_72
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v14
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_26

    goto :goto_4

    :cond_77
    move-object v5, p0

    move-object/from16 v6, p1

    move-object v7, v2

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    :try_start_81
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_8d

    :try_start_87
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v14

    goto/16 :goto_4

    :catchall_8d
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_92
    .catchall {:try_start_87 .. :try_end_92} :catchall_26
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # [Ljava/lang/String;

    if-eqz p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .registers 30
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Z

    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    :cond_d
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_21
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_37
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    :try_start_3c
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v11, 0x0

    const-string v3, "accounts"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_ff

    move-result-object v20

    :try_start_62
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_6e
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11b

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v17 .. v17}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_102

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no longer has a registered authenticator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v11, 0x1

    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v10, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catchall {:try_start_62 .. :try_end_ee} :catchall_ef

    goto :goto_6e

    :catchall_ef
    move-exception v3

    :try_start_f0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_fe

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_fe
    throw v3

    :catchall_ff
    move-exception v3

    monitor-exit v26
    :try_end_101
    .catchall {:try_start_f0 .. :try_end_101} :catchall_ff

    throw v3

    :cond_102
    :try_start_102
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_116

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_116
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6e

    :cond_11b
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_123
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/accounts/Account;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_149
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_161

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v3, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v3, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v18, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_149

    :cond_161
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16c
    .catchall {:try_start_102 .. :try_end_16c} :catchall_ef

    goto :goto_123

    :cond_16d
    :try_start_16d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_17b

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_17b
    monitor-exit v26
    :try_end_17c
    .catchall {:try_start_16d .. :try_end_17c} :catchall_ff

    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 24
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;
    .param p5    # Z
    .param p6    # Landroid/os/Bundle;

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_71

    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: accountType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", authTokenType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requiredFeatures "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    if-nez p1, :cond_7b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7b
    if-nez p2, :cond_85

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_85
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->checkManageAccountsPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(I)Z

    move-result v1

    if-nez v1, :cond_c3

    const/16 v1, 0x64

    :try_start_96
    const-string v2, "User is not allowed to add an account!"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9d} :catch_109

    :goto_9d
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_b1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v12, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_be

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    :goto_bd
    return-void

    :catchall_be
    move-exception v1

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1

    :cond_c3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    if-nez p6, :cond_101

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    :goto_d6
    const-string v1, "callerUid"

    move/from16 v0, v16

    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "callerPid"

    invoke-virtual {v10, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_e6
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$7;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_fd
    .catchall {:try_start_e6 .. :try_end_fd} :catchall_104

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    goto :goto_bd

    :cond_101
    move-object/from16 v10, p6

    goto :goto_d6

    :catchall_104
    move-exception v1

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1

    :catch_109
    move-exception v1

    goto :goto_9d
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 12
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/os/Bundle;

    const-string v0, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    if-nez p1, :cond_47

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_57
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5f

    move-result v0

    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return v0

    :catchall_5f
    move-exception v0

    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 13
    .param p1    # Landroid/accounts/Account;
    .param p2    # I

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "name"

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "type"

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "shared_accounts"

    const-string v7, "name=? AND type=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v8, v4

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v2, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v6, "shared_accounts"

    const-string v7, "name"

    invoke-virtual {v2, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_64

    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertAccountIntoDatabase: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping the DB insert failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return v4

    :cond_64
    move v4, v5

    goto :goto_63
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .registers 7
    .param p1    # I
    .param p2    # Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .registers 8
    .param p1    # Landroid/accounts/Account;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    if-nez p1, :cond_47

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_47
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkManageAccountsPermission()V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_53
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5a

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_5a
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method completeCloningAccount(Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 15
    .param p1    # Landroid/os/Bundle;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_4
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$4;

    const/4 v3, 0x0

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$4;->bind()V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    invoke-static {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception v0

    invoke-static {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .registers 18
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Landroid/os/Bundle;
    .param p4    # Z
    .param p5    # I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    move/from16 v0, p5

    if-eq v0, v1, :cond_45

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_45

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " trying to confirm account credentials for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_98

    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    if-nez p1, :cond_a2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a2
    if-nez p2, :cond_ac

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ac
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkManageAccountsPermission()V

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_b9
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$8;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move/from16 v6, p4

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_ca
    .catchall {:try_start_b9 .. :try_end_ca} :catchall_ce

    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_ce
    move-exception v1

    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AccountsManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3e
    return-void

    :cond_3f
    const-string v0, "--checkin"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_4f
    const/4 v5, 0x1

    :goto_50
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_63

    :cond_a1
    const/4 v5, 0x0

    goto :goto_50
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .registers 14
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editProperties: accountType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    if-nez p1, :cond_5b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    if-nez p2, :cond_65

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkManageAccountsPermission()V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_70
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$10;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_82

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_82
    move-exception v0

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAccounts(I)[Landroid/accounts/Account;
    .registers 9
    .param p1    # I

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermission()V

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_f
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_22

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_16
    invoke-virtual {p0, v0, v4, v1, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_1f
    move-exception v4

    :try_start_20
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccounts: accountType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    if-nez p1, :cond_5f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    if-nez p2, :cond_69

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermission()V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz p3, :cond_7d

    :try_start_7a
    array-length v0, p3

    if-nez v0, :cond_a1

    :cond_7d
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_9c

    const/4 v0, 0x0

    :try_start_83
    invoke-virtual {p0, v2, p2, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    monitor-exit v1
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_99

    :try_start_88
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v0, "accounts"

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-direct {p0, p1, v10}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_9c

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    :goto_98
    return-void

    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v0

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    :cond_a1
    :try_start_a1
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_9c

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    goto :goto_98
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    const/4 v0, -0x1

    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v2, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_21

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v2

    :goto_20
    return-object v2

    :catch_21
    move-exception v1

    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t determine the packageUid for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v5, [Landroid/accounts/Account;

    goto :goto_20
.end method

.method public getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_31

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method protected getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 11
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;

    if-eqz p2, :cond_1d

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-nez v0, :cond_11

    sget-object v4, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    :goto_10
    return-object v4

    :cond_11
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    invoke-direct {p0, p1, v4, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    goto :goto_10

    :cond_1d
    const/4 v3, 0x0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    array-length v4, v0

    add-int/2addr v3, v4

    goto :goto_2a

    :cond_39
    if-nez v3, :cond_3e

    sget-object v4, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    goto :goto_10

    :cond_3e
    new-array v0, v3, [Landroid/accounts/Account;

    const/4 v3, 0x0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    add-int/2addr v3, v4

    goto :goto_4d

    :cond_61
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    goto :goto_10
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .registers 5

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_f
    array-length v3, v1

    if-ge v0, v3, :cond_1f

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    return-object v3
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 30
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Z
    .param p6    # Landroid/os/Bundle;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6f

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAuthToken: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", response "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", authTokenType "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", notifyOnAuthFailure "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", caller\'s uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    if-nez p1, :cond_79

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "response is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_79
    if-nez p2, :cond_83

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_83
    if-nez p3, :cond_8d

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8d
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "android.permission.USE_CREDENTIALS"

    aput-object v6, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-interface {v3, v4, v6}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v19

    if-eqz v19, :cond_d9

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v3, v3, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v3, :cond_d9

    const/16 v16, 0x1

    :goto_c0
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "no such account"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d9
    const/16 v16, 0x0

    goto :goto_c0

    :cond_dc
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    if-nez v16, :cond_ee

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_151

    :cond_ee
    const/4 v14, 0x1

    :goto_ef
    if-nez p6, :cond_153

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    :goto_f6
    const-string v3, "callerUid"

    invoke-virtual {v10, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_10c

    const-string v3, "notifyOnAuthFailure"

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    if-nez v16, :cond_156

    if-eqz v14, :cond_156

    :try_start_114
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_156

    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    const-string v3, "authtoken"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "authAccount"

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "accountType"

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_14d
    .catchall {:try_start_114 .. :try_end_14d} :catchall_175

    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    :goto_150
    return-void

    :cond_151
    const/4 v14, 0x0

    goto :goto_ef

    :cond_153
    move-object/from16 v10, p6

    goto :goto_f6

    :cond_156
    :try_start_156
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$6;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v17, v5

    invoke-direct/range {v3 .. v17}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_171
    .catchall {:try_start_156 .. :try_end_171} :catchall_175

    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    goto :goto_150

    :catchall_175
    move-exception v3

    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p3, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v9

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    const/16 v0, 0x3e8

    if-eq v9, v0, :cond_27

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "can only call from system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_33
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$5;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_46

    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_46
    move-exception v0

    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .registers 12

    const-string v8, "AccountManagerService"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_33

    const-string v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAuthenticatorTypes: caller\'s uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_3b
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v8, v7}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v6, v8, [Landroid/accounts/AuthenticatorDescription;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v8, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v8, Landroid/accounts/AuthenticatorDescription;

    aput-object v8, v6, v2
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_65

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_61
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object v6

    :catchall_65
    move-exception v8

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 8
    .param p1    # Landroid/accounts/Account;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    if-nez p1, :cond_47

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_47
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_52
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5a

    move-result-object v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_5a
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    return-object v2

    :catch_d
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .registers 16
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "shared_accounts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_58

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    :cond_42
    new-instance v0, Landroid/accounts/Account;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_55
    .catchall {:try_start_e .. :try_end_55} :catchall_67

    move-result v0

    if-nez v0, :cond_42

    :cond_58
    if-eqz v11, :cond_5d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Landroid/accounts/Account;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v8

    :catchall_67
    move-exception v0

    if-eqz v11, :cond_6d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6d
    throw v0
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->initUserLocked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_16
    monitor-exit v2

    return-object v0

    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez p1, :cond_51

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    if-nez p2, :cond_5b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_66
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6e

    move-result-object v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_6e
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .registers 12
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Landroid/accounts/Account;
    .param p3    # [Ljava/lang/String;

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    if-nez p1, :cond_5f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    if-nez p2, :cond_69

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    if-nez p3, :cond_73

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermission()V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_7e
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_8e

    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_8e
    move-exception v0

    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .registers 6
    .param p1    # I
    .param p2    # Landroid/app/Notification;
    .param p3    # Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidateAuthToken: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    if-nez p1, :cond_47

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_47
    if-nez p2, :cond_51

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "authToken is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_51
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkManageAccountsOrUseCredentialsPermissions()V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5c
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_82

    :try_start_61
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_7f

    :try_start_6c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_7a

    :try_start_72
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v5
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_7f

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_7a
    move-exception v4

    :try_start_7b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    :catchall_7f
    move-exception v4

    monitor-exit v5
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_7f

    :try_start_81
    throw v4
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .registers 6
    .param p1    # Landroid/accounts/AuthenticatorDescription;
    .param p2    # I
    .param p3    # Z

    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # Z

    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1    # I
    .param p2    # Landroid/os/Parcel;
    .param p3    # Landroid/os/Parcel;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    const-string v1, "AccountManagerService"

    const-string v2, "Account Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    throw v0
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peekAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez p1, :cond_51

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    if-nez p2, :cond_5b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_66
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6e

    move-result-object v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_6e
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_24

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .registers 15
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v1, "authtokens"

    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_20
    :try_start_20
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_34

    goto :goto_20

    :catchall_34
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v9
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .registers 15
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v1, "extras"

    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_20
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_34

    goto :goto_20

    :catchall_34
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v10
.end method

.method protected readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_24

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .registers 13
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Landroid/accounts/Account;

    const-string v7, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_47

    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeAccount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez p1, :cond_51

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "response is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_51
    if-nez p2, :cond_5b

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "account is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5b
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkManageAccountsPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(I)Z

    move-result v7

    if-nez v7, :cond_76

    const/4 v7, 0x6

    :try_start_71
    const-string v8, "User cannot modify accounts"

    invoke-interface {p1, v7, v8}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_d5

    :cond_76
    :goto_76
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v3

    invoke-direct {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    :try_start_8a
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_96
    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    goto :goto_96

    :catchall_c0
    move-exception v7

    monitor-exit v8
    :try_end_c2
    .catchall {:try_start_8a .. :try_end_c2} :catchall_c0

    throw v7

    :cond_c3
    :try_start_c3
    monitor-exit v8
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c0

    :try_start_c4
    new-instance v7, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    invoke-direct {v7, p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_d0

    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_d0
    move-exception v7

    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v7

    :catch_d5
    move-exception v7

    goto :goto_76
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .registers 3
    .param p1    # Landroid/accounts/Account;

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 12
    .param p1    # Landroid/accounts/Account;
    .param p2    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v5, "shared_accounts"

    const-string v6, "name=? AND type=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2a

    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    :cond_2a
    if-lez v2, :cond_2d

    :goto_2c
    return v3

    :cond_2d
    move v3, v4

    goto :goto_2c
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez p1, :cond_51

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    if-nez p2, :cond_5b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_66
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_6d
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    if-nez p1, :cond_47

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_47
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_52
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_59

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_59
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez p2, :cond_51

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    if-nez p1, :cond_5b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_66
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_6d
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 7
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    :cond_e
    if-eqz p4, :cond_14

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    :goto_13
    return-void

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_13
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 19
    .param p1    # Landroid/accounts/IAccountManagerResponse;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Landroid/os/Bundle;

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCredentials: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", authTokenType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    if-nez p1, :cond_69

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    if-nez p2, :cond_73

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_73
    if-nez p3, :cond_7d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "authTokenType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7d
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->checkManageAccountsPermission()V

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_88
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$9;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move/from16 v6, p4

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_9c
    .catchall {:try_start_88 .. :try_end_9c} :catchall_a0

    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_a0
    move-exception v1

    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public validateAccounts(I)V
    .registers 4
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3    # Landroid/accounts/Account;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_17

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    if-nez p5, :cond_1d

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3    # Landroid/accounts/Account;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_17

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    if-nez p5, :cond_1d

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method
