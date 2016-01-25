.class Lcom/liquable/nemo/profile/BaseFriendProfileFragment$8;
.super Landroid/os/AsyncTask;
.source "BaseFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->trimCacheDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$8;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 405
    invoke-static {}, Lcom/liquable/nemo/util/FileCacheManager;->trimTempDir()V

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method
