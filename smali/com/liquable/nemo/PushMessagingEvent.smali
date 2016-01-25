.class public Lcom/liquable/nemo/PushMessagingEvent;
.super Ljava/lang/Object;
.source "PushMessagingEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/PushMessagingEvent$Type;
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.PushMessagingEvent.ACTION_NAME"

.field public static final KEY_REGISTRATION_ID:Ljava/lang/String; = "com.liquable.nemo.PushMessagingEvent.KEY_REGISTRATION_ID"

.field public static final KEY_TYPE:Ljava/lang/String; = "com.liquable.nemo.PushMessagingEvent.KEY_TYPE"


# instance fields
.field private final registrationId:Ljava/lang/String;

.field private final type:Lcom/liquable/nemo/PushMessagingEvent$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/PushMessagingEvent$Type;)V
    .locals 0
    .param p1, "registrationId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/liquable/nemo/PushMessagingEvent$Type;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/PushMessagingEvent;->registrationId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/liquable/nemo/PushMessagingEvent;->type:Lcom/liquable/nemo/PushMessagingEvent$Type;

    .line 49
    return-void
.end method

.method public static createFromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/PushMessagingEvent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    new-instance v1, Lcom/liquable/nemo/PushMessagingEvent;

    const-string/jumbo v0, "com.liquable.nemo.PushMessagingEvent.KEY_REGISTRATION_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "com.liquable.nemo.PushMessagingEvent.KEY_TYPE"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/PushMessagingEvent$Type;

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/PushMessagingEvent;-><init>(Ljava/lang/String;Lcom/liquable/nemo/PushMessagingEvent$Type;)V

    return-object v1
.end method

.method public static createMigrateRegistrationIdIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.PushMessagingEvent.ACTION_NAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.PushMessagingEvent.KEY_REGISTRATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string/jumbo v1, "com.liquable.nemo.PushMessagingEvent.KEY_TYPE"

    sget-object v2, Lcom/liquable/nemo/PushMessagingEvent$Type;->MIGRATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    return-object v0
.end method

.method public static createUpdateRegistrationIdIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.PushMessagingEvent.ACTION_NAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.PushMessagingEvent.KEY_REGISTRATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "com.liquable.nemo.PushMessagingEvent.KEY_TYPE"

    sget-object v2, Lcom/liquable/nemo/PushMessagingEvent$Type;->UPDATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method


# virtual methods
.method public final getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/PushMessagingEvent;->registrationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/liquable/nemo/PushMessagingEvent$Type;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/PushMessagingEvent;->type:Lcom/liquable/nemo/PushMessagingEvent$Type;

    return-object v0
.end method
