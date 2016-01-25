.class public Lcom/liquable/nemo/targetedintent/LaunchableActivity;
.super Ljava/lang/Object;
.source "LaunchableActivity.java"


# instance fields
.field private final appIcon:Landroid/graphics/drawable/Drawable;

.field private final appName:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->appName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object p3, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->packageName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->className:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetedSendIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/targetedintent/LaunchableActivity;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-object v0
.end method
