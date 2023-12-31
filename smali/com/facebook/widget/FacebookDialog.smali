.class public Lcom/facebook/widget/FacebookDialog;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FacebookDialog$PendingCall;,
        Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;,
        Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$PhotoMessageDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,
        Lcom/facebook/widget/FacebookDialog$Builder;,
        Lcom/facebook/widget/FacebookDialog$OnPresentCallback;,
        Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$DialogFeature;,
        Lcom/facebook/widget/FacebookDialog$Callback;
    }
.end annotation


# static fields
.field public static final COMPLETION_GESTURE_CANCEL:Ljava/lang/String; = "cancel"

.field private static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field private static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field private static final EXTRA_DIALOG_COMPLETION_ID_KEY:Ljava/lang/String; = "com.facebook.platform.extra.POST_ID"

.field private static attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private fragment:Landroid/support/v4/app/Fragment;

.field private onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "appCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p4, "onPresentCallback"    # Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    .line 310
    iput-object p2, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    .line 311
    iput-object p3, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 312
    iput-object p4, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Landroid/support/v4/app/Fragment;
    .param p3, "x2"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p4, "x3"    # Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .param p5, "x4"    # Lcom/facebook/widget/FacebookDialog$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Iterable;

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog;->getVersionSpecForFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;[I)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [I

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/Iterable;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;

    move-result-object v0

    return-object v0
.end method

.method public static varargs canPresentMessageDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "features"    # [Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    .prologue
    .line 405
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public static varargs canPresentOpenGraphActionDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "features"    # [Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    .prologue
    .line 420
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public static varargs canPresentOpenGraphMessageDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "features"    # [Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;

    .prologue
    .line 435
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public static varargs canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "features"    # [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    .prologue
    .line 390
    sget-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method private static getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "features":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/facebook/widget/FacebookDialog$DialogFeature;>;"
    const/4 v0, 0x0

    .line 487
    .local v0, "action":Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 490
    .local v1, "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    invoke-interface {v1}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 493
    .end local v1    # "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    :cond_0
    return-object v0
.end method

.method private static getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-direct {v0}, Lcom/facebook/NativeAppCallAttachmentStore;-><init>()V

    sput-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    .line 459
    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    return-object v0
.end method

.method private static getEventName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 504
    const-string/jumbo v2, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 506
    .local v1, "hasPhotos":Z
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getEventName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "hasPhotos"    # Z

    .prologue
    .line 512
    const-string/jumbo v1, "com.facebook.platform.action.request.FEED_DIALOG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    if-eqz p1, :cond_0

    const-string/jumbo v0, "fb_dialogs_present_share_photo"

    .line 529
    .local v0, "eventName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 513
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "fb_dialogs_present_share"

    goto :goto_0

    .line 516
    :cond_1
    const-string/jumbo v1, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    if-eqz p1, :cond_2

    const-string/jumbo v0, "fb_dialogs_present_message_photo"

    .restart local v0    # "eventName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v0    # "eventName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "fb_dialogs_present_message"

    goto :goto_1

    .line 520
    :cond_3
    const-string/jumbo v1, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    const-string/jumbo v0, "fb_dialogs_present_share_og"

    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_0

    .line 522
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 523
    const-string/jumbo v0, "fb_dialogs_present_message_og"

    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "com.facebook.platform.action.request.LIKE_DIALOG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 525
    const-string/jumbo v0, "fb_dialogs_present_like"

    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_6
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "An unspecified action was presented"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "result"    # Landroid/os/Bundle;

    .prologue
    .line 288
    const-string/jumbo v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeDialogDidComplete(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "result"    # Landroid/os/Bundle;

    .prologue
    .line 277
    const-string/jumbo v0, "com.facebook.platform.extra.DID_COMPLETE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getNativeDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "result"    # Landroid/os/Bundle;

    .prologue
    .line 299
    const-string/jumbo v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;[I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "versionSpec"    # [I

    .prologue
    .line 452
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAction(Landroid/content/Context;Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/widget/FacebookDialog$DialogFeature;)[I
    .locals 4
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "feature"    # Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .prologue
    .line 477
    invoke-interface {p2}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/facebook/internal/Utility;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/Utility$DialogFeatureConfig;

    move-result-object v0

    .line 478
    .local v0, "config":Lcom/facebook/internal/Utility$DialogFeatureConfig;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/facebook/internal/Utility$DialogFeatureConfig;->getVersionSpec()[I

    move-result-object v1

    .line 481
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getMinVersion()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method private static getVersionSpecForFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I
    .locals 5
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "features":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/facebook/widget/FacebookDialog$DialogFeature;>;"
    const/4 v2, 0x0

    .line 467
    .local v2, "intersectedRange":[I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 468
    .local v0, "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    invoke-static {p0, p1, v0}, Lcom/facebook/widget/FacebookDialog;->getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/widget/FacebookDialog$DialogFeature;)[I

    move-result-object v1

    .line 469
    .local v1, "featureVersionSpec":[I
    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->intersectRanges([I[I)[I

    move-result-object v2

    .line 470
    goto :goto_0

    .line 472
    .end local v0    # "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    .end local v1    # "featureVersionSpec":[I
    :cond_0
    return-object v2
.end method

.method public static handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "callback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v3

    if-eq p2, v3, :cond_0

    .line 356
    const/4 v3, 0x0

    .line 375
    :goto_0
    return v3

    .line 359
    :cond_0
    sget-object v3, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-eqz v3, :cond_1

    .line 360
    sget-object v3, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/facebook/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;)V

    .line 363
    :cond_1
    if-eqz p4, :cond_2

    .line 364
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 366
    .local v1, "errorData":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v0

    .line 368
    .local v0, "error":Ljava/lang/Exception;
    invoke-interface {p4, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$Callback;->onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V

    .line 375
    .end local v0    # "error":Ljava/lang/Exception;
    .end local v1    # "errorData":Landroid/os/Bundle;
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 370
    :cond_3
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 371
    .local v2, "successResults":Landroid/os/Bundle;
    invoke-interface {p4, p1, v2}, Lcom/facebook/widget/FacebookDialog$Callback;->onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private static handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "features":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/facebook/widget/FacebookDialog$DialogFeature;>;"
    invoke-static {p1}, Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "actionName":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/Settings;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "applicationId":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 447
    :cond_0
    invoke-static {v1, v0, p1}, Lcom/facebook/widget/FacebookDialog;->getVersionSpecForFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object v2

    .line 444
    invoke-static {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;[I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "outcome"    # Ljava/lang/String;

    .prologue
    .line 497
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    .end local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 498
    .local v0, "logger":Lcom/facebook/AppEventsLogger;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v1, "parameters":Landroid/os/Bundle;
    const-string/jumbo v2, "fb_dialog_outcome"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 501
    return-void
.end method


# virtual methods
.method public present()Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 5

    .prologue
    .line 324
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/widget/FacebookDialog;->getEventName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Completed"

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/facebook/widget/FacebookDialog$OnPresentCallback;->onPresent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-object v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
