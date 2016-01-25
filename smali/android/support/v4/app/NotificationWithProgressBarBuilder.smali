.class public Landroid/support/v4/app/NotificationWithProgressBarBuilder;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "NotificationWithProgressBarBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 6

    .prologue
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 18
    invoke-super {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    .line 21
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030138

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 23
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mNotification:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 24
    iget-object v1, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0802f5

    iget-object v3, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 25
    iget-object v1, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0802f6

    iget-object v3, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    iget-object v1, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0802f7

    iget v3, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mProgressMax:I

    iget v4, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mProgress:I

    iget-boolean v5, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mProgressIndeterminate:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 30
    iget-object v1, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 31
    iget-object v1, p0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->mNotification:Landroid/app/Notification;

    goto :goto_0
.end method
