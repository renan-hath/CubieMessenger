.class Lcom/liquable/nemo/external/FallbackHandler;
.super Ljava/lang/Object;
.source "FallbackHandler.java"

# interfaces
.implements Lcom/liquable/nemo/external/IExternalUrlHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public handle(Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;Landroid/net/Uri;)V
    .locals 3
    .param p1, "activity"    # Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01f1

    .line 21
    invoke-virtual {p1, v1}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01f0

    .line 22
    invoke-virtual {p1, v1}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/external/FallbackHandler$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/external/FallbackHandler$2;-><init>(Lcom/liquable/nemo/external/FallbackHandler;Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;)V

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    new-instance v2, Lcom/liquable/nemo/external/FallbackHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/external/FallbackHandler$1;-><init>(Lcom/liquable/nemo/external/FallbackHandler;Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;)V

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 38
    return-void
.end method
