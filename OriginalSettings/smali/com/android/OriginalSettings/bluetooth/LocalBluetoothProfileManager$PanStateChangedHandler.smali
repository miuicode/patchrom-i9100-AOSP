.class Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter "profile"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 232
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->mProfile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    .line 237
    .local v0, panProfile:Lcom/android/OriginalSettings/bluetooth/PanProfile;
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, role:I
    invoke-virtual {v0, p3, v1}, Lcom/android/OriginalSettings/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 240
    return-void
.end method
