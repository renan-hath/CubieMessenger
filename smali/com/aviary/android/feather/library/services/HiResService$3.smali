.class Lcom/aviary/android/feather/library/services/HiResService$3;
.super Ljava/lang/Object;
.source "HiResService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/services/HiResService;->execute(Ljava/lang/String;Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/services/HiResService;

.field private final synthetic val$actions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field private final synthetic val$session:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/services/HiResService;Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    iput-object p2, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->val$session:Ljava/lang/String;

    iput-object p3, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->val$actions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 141
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/HiResService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    .line 142
    .local v8, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 143
    .local v6, "actionString":Ljava/lang/String;
    const-wide/16 v11, -0x1

    .line 146
    .local v11, "session_id":J
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->val$session:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 147
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 150
    .local v10, "id_column":I
    const/4 v0, -0x1

    if-le v10, v0, :cond_0

    .line 151
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 154
    .end local v10    # "id_column":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-gez v0, :cond_3

    .line 158
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    iget-object v0, v0, Lcom/aviary/android/feather/library/services/HiResService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cannot find id for session "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->val$session:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 183
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->val$actions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->metadata()Lcom/aviary/android/feather/headless/moa/MoaMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aviary/android/feather/headless/moa/JSONWriter;->encode(Lcom/aviary/android/feather/headless/moa/MoaActionList;Lcom/aviary/android/feather/headless/moa/MoaMetadata;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 177
    if-eqz v6, :cond_2

    .line 178
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "actions"

    invoke-virtual {v13, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "session_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8, v11, v12}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$ActionsDbColumns;->getContentUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 169
    .end local v13    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 170
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 171
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/HiResService$3;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    iget-object v0, v0, Lcom/aviary/android/feather/library/services/HiResService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method
