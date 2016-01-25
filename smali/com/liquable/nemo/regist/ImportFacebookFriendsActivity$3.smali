.class Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$3;
.super Landroid/os/AsyncTask;
.source "ImportFacebookFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->preloadMyPicture()V
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
.field final synthetic this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$3;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 184
    :try_start_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookDaemon;->preloadMyPicture()V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method
