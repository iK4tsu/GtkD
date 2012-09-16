/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GDBusInterfaceSkeleton.html
 * outPack = gio
 * outFile = DBusInterfaceSkeleton
 * strct   = GDBusInterfaceSkeleton
 * realStrct=
 * ctorStrct=
 * clss    = DBusInterfaceSkeleton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- DBusInterfaceIF
 * prefixes:
 * 	- g_dbus_interface_skeleton_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Variant
 * 	- gio.DBusConnection
 * 	- gio.DBusInterfaceInfo
 * 	- gio.DBusInterfaceVTable
 * 	- gio.DBusInterfaceT
 * 	- gio.DBusInterfaceIF
 * structWrap:
 * 	- GDBusConnection* -> DBusConnection
 * 	- GDBusInterfaceInfo* -> DBusInterfaceInfo
 * 	- GDBusInterfaceVTable* -> DBusInterfaceVTable
 * 	- GVariant* -> Variant
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusInterfaceSkeleton;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.Variant;
private import gio.DBusConnection;
private import gio.DBusInterfaceInfo;
private import gio.DBusInterfaceVTable;
private import gio.DBusInterfaceT;
private import gio.DBusInterfaceIF;



private import gobject.ObjectG;

/**
 * Description
 * Abstract base class for D-Bus interfaces on the service side.
 */
public class DBusInterfaceSkeleton : ObjectG, DBusInterfaceIF
{
	
	/** the main Gtk struct */
	protected GDBusInterfaceSkeleton* gDBusInterfaceSkeleton;
	
	
	public GDBusInterfaceSkeleton* getDBusInterfaceSkeletonStruct()
	{
		return gDBusInterfaceSkeleton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusInterfaceSkeleton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusInterfaceSkeleton* gDBusInterfaceSkeleton)
	{
		if(gDBusInterfaceSkeleton is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gDBusInterfaceSkeleton);
		if( ptr !is null )
		{
			this = cast(DBusInterfaceSkeleton)ptr;
			return;
		}
		super(cast(GObject*)gDBusInterfaceSkeleton);
		this.gDBusInterfaceSkeleton = gDBusInterfaceSkeleton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusInterfaceSkeleton = cast(GDBusInterfaceSkeleton*)obj;
	}
	
	// add the DBusInterface capabilities
	mixin DBusInterfaceT!(GDBusInterfaceSkeleton);
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(GDBusMethodInvocation*, DBusInterfaceSkeleton)[] onGAuthorizeMethodListeners;
	/**
	 * Emitted when a method is invoked by a remote caller and used to
	 * determine if the method call is authorized.
	 * Note that this signal is emitted in a thread dedicated to
	 * handling the method call so handlers are allowed to perform
	 * blocking IO. This means that it is appropriate to call
	 * e.g. polkit_authority_check_authorization_sync()
	 * with the POLKIT_CHECK_AUTHORIZATION_FLAGS_ALLOW_USER_INTERACTION flag set.
	 * If FALSE is returned then no further handlers are run and the
	 * signal handler must take a reference to invocation and finish
	 * handling the call (e.g. return an error via
	 * g_dbus_method_invocation_return_error()).
	 * Otherwise, if TRUE is returned, signal emission continues. If no
	 * handlers return FALSE, then the method is dispatched. If
	 * interface has an enclosing GDBusObjectSkeleton, then the
	 * "authorize-method" signal handlers run before
	 * the handlers for this signal.
	 * The default class handler just returns TRUE.
	 * Please note that the common case is optimized: if no signals
	 * handlers are connected and the default class handler isn't
	 * overridden (for both interface and the enclosing
	 * GDBusObjectSkeleton, if any) and "g-flags" does
	 * not have the
	 * G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD
	 * flags set, no dedicated thread is ever used and the call will be
	 * handled in the same thread as the object that interface belongs
	 * to was exported in.
	 * TRUE if the call is authorized, FALSE otherwise.
	 * Since 2.30
	 */
	void addOnGAuthorizeMethod(bool delegate(GDBusMethodInvocation*, DBusInterfaceSkeleton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("g-authorize-method" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"g-authorize-method",
			cast(GCallback)&callBackGAuthorizeMethod,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["g-authorize-method"] = 1;
		}
		onGAuthorizeMethodListeners ~= dlg;
	}
	extern(C) static gboolean callBackGAuthorizeMethod(GDBusInterfaceSkeleton* intrfaceStruct, GDBusMethodInvocation* invocation, DBusInterfaceSkeleton _dBusInterfaceSkeleton)
	{
		foreach ( bool delegate(GDBusMethodInvocation*, DBusInterfaceSkeleton) dlg ; _dBusInterfaceSkeleton.onGAuthorizeMethodListeners )
		{
			if ( dlg(invocation, _dBusInterfaceSkeleton) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * If interface_ has outstanding changes, request for these changes to be
	 * emitted immediately.
	 * For example, an exported D-Bus interface may queue up property
	 * changes and emit the
	 * org.freedesktop.DBus.Properties::PropertiesChanged
	 * signal later (e.g. in an idle handler). This technique is useful
	 * for collapsing multiple property changes into one.
	 * Since 2.30
	 */
	public void flush()
	{
		// void g_dbus_interface_skeleton_flush (GDBusInterfaceSkeleton *interface_);
		g_dbus_interface_skeleton_flush(gDBusInterfaceSkeleton);
	}
	
	/**
	 * Gets D-Bus introspection information for the D-Bus interface
	 * implemented by interface_.
	 * Since 2.30
	 * Returns: A GDBusInterfaceInfo (never NULL). Do not free. [transfer none]
	 */
	public DBusInterfaceInfo getInfo()
	{
		// GDBusInterfaceInfo * g_dbus_interface_skeleton_get_info (GDBusInterfaceSkeleton *interface_);
		auto p = g_dbus_interface_skeleton_get_info(gDBusInterfaceSkeleton);
		if(p is null)
		{
			return null;
		}
		return new DBusInterfaceInfo(cast(GDBusInterfaceInfo*) p);
	}
	
	/**
	 * Gets the interface vtable for the D-Bus interface implemented by
	 * interface_. The returned function pointers should expect interface_
	 * itself to be passed as user_data.
	 * Since 2.30
	 * Returns: A GDBusInterfaceVTable (never NULL).
	 */
	public DBusInterfaceVTable getVtable()
	{
		// GDBusInterfaceVTable * g_dbus_interface_skeleton_get_vtable  (GDBusInterfaceSkeleton *interface_);
		auto p = g_dbus_interface_skeleton_get_vtable(gDBusInterfaceSkeleton);
		if(p is null)
		{
			return null;
		}
		return new DBusInterfaceVTable(cast(GDBusInterfaceVTable*) p);
	}
	
	/**
	 * Gets all D-Bus properties for interface_.
	 * Since 2.30
	 * Returns: A GVariant of type 'a{sv}'. Free with g_variant_unref(). [transfer full]
	 */
	public Variant getProperties()
	{
		// GVariant * g_dbus_interface_skeleton_get_properties  (GDBusInterfaceSkeleton *interface_);
		auto p = g_dbus_interface_skeleton_get_properties(gDBusInterfaceSkeleton);
		if(p is null)
		{
			return null;
		}
		return new Variant(cast(GVariant*) p);
	}
	
	/**
	 * Exports interface_ at object_path on connection.
	 * Use g_dbus_interface_skeleton_unexport() to unexport the object.
	 * Since 2.30
	 * Params:
	 * connection = A GDBusConnection to export interface_ on.
	 * objectPath = The path to export the interface at.
	 * Returns: TRUE if the interface was exported, other FALSE with error set.
	 * Throws: GException on failure.
	 */
	public int export(DBusConnection connection, string objectPath)
	{
		// gboolean g_dbus_interface_skeleton_export (GDBusInterfaceSkeleton *interface_,  GDBusConnection *connection,  const gchar *object_path,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_interface_skeleton_export(gDBusInterfaceSkeleton, (connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(objectPath), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Stops exporting an interface previously exported with
	 * g_dbus_interface_skeleton_export().
	 * Since 2.30
	 */
	public void unexport()
	{
		// void g_dbus_interface_skeleton_unexport (GDBusInterfaceSkeleton *interface_);
		g_dbus_interface_skeleton_unexport(gDBusInterfaceSkeleton);
	}
	
	/**
	 * Gets the connection that interface_ is exported on, if any.
	 * Since 2.30
	 * Returns: A GDBusConnection or NULL if interface_ is not exported anywhere. Do not free, the object belongs to interface_. [transfer none]
	 */
	public DBusConnection getConnection()
	{
		// GDBusConnection * g_dbus_interface_skeleton_get_connection  (GDBusInterfaceSkeleton *interface_);
		auto p = g_dbus_interface_skeleton_get_connection(gDBusInterfaceSkeleton);
		if(p is null)
		{
			return null;
		}
		return new DBusConnection(cast(GDBusConnection*) p);
	}
	
	/**
	 * Gets the object path that interface_ is exported on, if any.
	 * Since 2.30
	 * Returns: A string owned by interface_ or NULL if interface_ is not exported anywhere. Do not free, the string belongs to interface_.
	 */
	public string getObjectPath()
	{
		// const gchar * g_dbus_interface_skeleton_get_object_path  (GDBusInterfaceSkeleton *interface_);
		return Str.toString(g_dbus_interface_skeleton_get_object_path(gDBusInterfaceSkeleton));
	}
	
	/**
	 * Gets the GDBusInterfaceSkeletonFlags that describes what the behavior
	 * of interface_
	 * Since 2.30
	 * Returns: One or more flags from the GDBusInterfaceSkeletonFlags enumeration.
	 */
	public GDBusInterfaceSkeletonFlags getFlags()
	{
		// GDBusInterfaceSkeletonFlags g_dbus_interface_skeleton_get_flags  (GDBusInterfaceSkeleton *interface_);
		return g_dbus_interface_skeleton_get_flags(gDBusInterfaceSkeleton);
	}
	
	/**
	 * Sets flags describing what the behavior of skeleton should be.
	 * Since 2.30
	 * Params:
	 * flags = Flags from the GDBusInterfaceSkeletonFlags enumeration.
	 */
	public void setFlags(GDBusInterfaceSkeletonFlags flags)
	{
		// void g_dbus_interface_skeleton_set_flags (GDBusInterfaceSkeleton *interface_,  GDBusInterfaceSkeletonFlags flags);
		g_dbus_interface_skeleton_set_flags(gDBusInterfaceSkeleton, flags);
	}
}
