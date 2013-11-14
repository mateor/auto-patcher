.class Lcom/android/server/LockSettingsService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V
    .registers 6
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    const-string v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const-string v1, "ro.lockscreen.disable.default"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    const-string v2, "lockscreen.disabled"

    const-string v3, "1"

    # invokes: Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IZ)V
    .registers 9
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Z

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "INSERT OR REPLACE INTO locksettings(name,user,value) VALUES(?,?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x2

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x3

    if-eqz p4, :cond_21

    const-wide/16 v1, 0x1

    :goto_15
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_24

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_20
    return-void

    :cond_21
    const-wide/16 v1, 0x0

    goto :goto_15

    :catchall_24
    move-exception v1

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2a
    throw v1
.end method

.method private maybeEnableWidgetSettingForUsers(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    :goto_1d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_73

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->hasWidgetsEnabledInKeyguard(I)Z

    move-result v1

    const-string v6, "LockSettingsDB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget upgrade uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", w[]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "lockscreen.widgets_enabled"

    invoke-direct {p0, p1, v6, v4, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_73
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    move v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->maybeEnableWidgetSettingForUsers(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x2

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method
