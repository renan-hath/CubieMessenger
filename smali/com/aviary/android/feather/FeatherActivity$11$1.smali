.class Lcom/aviary/android/feather/FeatherActivity$11$1;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/FeatherActivity$11;

.field final synthetic val$listEntries:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity$11;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/FeatherActivity$11;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$11$1;->this$1:Lcom/aviary/android/feather/FeatherActivity$11;

    iput-object p2, p0, Lcom/aviary/android/feather/FeatherActivity$11$1;->val$listEntries:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$11$1;->this$1:Lcom/aviary/android/feather/FeatherActivity$11;

    iget-object v0, v0, Lcom/aviary/android/feather/FeatherActivity$11;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity$11$1;->val$listEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/FeatherActivity;->onToolsLoaded(Ljava/util/List;)V

    .line 1058
    return-void
.end method
