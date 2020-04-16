// Generated by gencpp from file fkie_multimaster_msgs/ROSMaster.msg
// DO NOT EDIT!


#ifndef FKIE_MULTIMASTER_MSGS_MESSAGE_ROSMASTER_H
#define FKIE_MULTIMASTER_MSGS_MESSAGE_ROSMASTER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fkie_multimaster_msgs
{
template <class ContainerAllocator>
struct ROSMaster_
{
  typedef ROSMaster_<ContainerAllocator> Type;

  ROSMaster_()
    : name()
    , uri()
    , timestamp(0.0)
    , timestamp_local(0.0)
    , online(false)
    , discoverer_name()
    , monitoruri()  {
    }
  ROSMaster_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , uri(_alloc)
    , timestamp(0.0)
    , timestamp_local(0.0)
    , online(false)
    , discoverer_name(_alloc)
    , monitoruri(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _uri_type;
  _uri_type uri;

   typedef double _timestamp_type;
  _timestamp_type timestamp;

   typedef double _timestamp_local_type;
  _timestamp_local_type timestamp_local;

   typedef uint8_t _online_type;
  _online_type online;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _discoverer_name_type;
  _discoverer_name_type discoverer_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _monitoruri_type;
  _monitoruri_type monitoruri;





  typedef boost::shared_ptr< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> const> ConstPtr;

}; // struct ROSMaster_

typedef ::fkie_multimaster_msgs::ROSMaster_<std::allocator<void> > ROSMaster;

typedef boost::shared_ptr< ::fkie_multimaster_msgs::ROSMaster > ROSMasterPtr;
typedef boost::shared_ptr< ::fkie_multimaster_msgs::ROSMaster const> ROSMasterConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fkie_multimaster_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'fkie_multimaster_msgs': ['/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08ea76968a3be2b8b1c6550b39616f72";
  }

  static const char* value(const ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08ea76968a3be2b8ULL;
  static const uint64_t static_value2 = 0xb1c6550b39616f72ULL;
};

template<class ContainerAllocator>
struct DataType< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fkie_multimaster_msgs/ROSMaster";
  }

  static const char* value(const ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
# ROS Master URI\n\
string uri\n\
# The timestamp of the state of the remoter ROS master\n\
float64 timestamp\n\
# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.\n\
float64 timestamp_local\n\
bool online\n\
string discoverer_name\n\
string monitoruri\n\
";
  }

  static const char* value(const ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.uri);
      stream.next(m.timestamp);
      stream.next(m.timestamp_local);
      stream.next(m.online);
      stream.next(m.discoverer_name);
      stream.next(m.monitoruri);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ROSMaster_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fkie_multimaster_msgs::ROSMaster_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "uri: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.uri);
    s << indent << "timestamp: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp);
    s << indent << "timestamp_local: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp_local);
    s << indent << "online: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.online);
    s << indent << "discoverer_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.discoverer_name);
    s << indent << "monitoruri: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.monitoruri);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FKIE_MULTIMASTER_MSGS_MESSAGE_ROSMASTER_H
