.class Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;
.super Landroid/os/AsyncTask;
.source "SelectMyAccountIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->findGoogleProfileIcon()V
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 58
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/AccountDaemon;->findGoogleProfileIcon()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 1
    .param p1, "result"    # Ljava/io/File;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    # getter for: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->iconFile:Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$000(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    # invokes: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->updateIcon(Ljava/io/File;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$100(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;Ljava/io/File;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$1;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
