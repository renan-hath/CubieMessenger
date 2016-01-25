.class Lcom/aviary/android/feather/library/services/HiResService$1;
.super Ljava/lang/Object;
.source "HiResService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/services/HiResService;->load(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/services/HiResService;

.field private final synthetic val$apiKey:Ljava/lang/String;

.field private final synthetic val$session:Ljava/lang/String;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/services/HiResService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    iput-object p2, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$session:Ljava/lang/String;

    iput-object p4, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$apiKey:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 95
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "file_name"

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/HiResService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/HiResService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$session:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$SessionsDbColumns;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, "result":Landroid/net/Uri;
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$session:Ljava/lang/String;

    iget-object v5, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$apiKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/HiResService$1;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/aviary/android/feather/library/services/HiResService;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v3, v0, v4, v5, v6}, Lcom/aviary/android/feather/library/services/HiResService;->access$0(Lcom/aviary/android/feather/library/services/HiResService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
