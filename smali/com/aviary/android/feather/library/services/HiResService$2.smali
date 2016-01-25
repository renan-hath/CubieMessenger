.class Lcom/aviary/android/feather/library/services/HiResService$2;
.super Ljava/lang/Object;
.source "HiResService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/services/HiResService;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
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
.method constructor <init>(Lcom/aviary/android/feather/library/services/HiResService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    iput-object p2, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->val$session:Ljava/lang/String;

    iput-object p3, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->val$apiKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->val$uri:Landroid/net/Uri;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/HiResService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/HiResService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/HiResService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->val$session:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/providers/FeatherContentProvider$ActionsDbColumns;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "currentUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/HiResService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->this$0:Lcom/aviary/android/feather/library/services/HiResService;

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->val$session:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->val$apiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/HiResService$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v4}, Lcom/aviary/android/feather/library/services/HiResService;->load(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
