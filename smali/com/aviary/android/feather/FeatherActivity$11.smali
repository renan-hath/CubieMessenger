.class Lcom/aviary/android/feather/FeatherActivity$11;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->delayedInitializeTools()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$11;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity$11;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # invokes: Lcom/aviary/android/feather/FeatherActivity;->loadTools()Ljava/util/List;
    invoke-static {v1}, Lcom/aviary/android/feather/FeatherActivity;->access$400(Lcom/aviary/android/feather/FeatherActivity;)Ljava/util/List;

    move-result-object v0

    .line 1053
    .local v0, "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/content/ToolEntry;>;"
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity$11;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget-object v1, v1, Lcom/aviary/android/feather/FeatherActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aviary/android/feather/FeatherActivity$11$1;

    invoke-direct {v2, p0, v0}, Lcom/aviary/android/feather/FeatherActivity$11$1;-><init>(Lcom/aviary/android/feather/FeatherActivity$11;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1060
    return-void
.end method
