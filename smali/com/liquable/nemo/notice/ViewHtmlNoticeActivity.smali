.class public Lcom/liquable/nemo/notice/ViewHtmlNoticeActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "ViewHtmlNoticeActivity.java"


# static fields
.field static final HTML_NOTICE_ID:Ljava/lang/String; = "HTML_NOTICE_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noticeId"    # J

    .prologue
    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/notice/ViewHtmlNoticeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "HTML_NOTICE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14
    return-object v0
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    const-class v0, Lcom/liquable/nemo/notice/ViewHtmlNoticeFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0d0392

    return v0
.end method
