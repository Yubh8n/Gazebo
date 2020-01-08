// Generated by gencpp from file mavlink_lora/mavlink_lora_command_message_interval.msg
// DO NOT EDIT!


#ifndef MAVLINK_LORA_MESSAGE_MAVLINK_LORA_COMMAND_MESSAGE_INTERVAL_H
#define MAVLINK_LORA_MESSAGE_MAVLINK_LORA_COMMAND_MESSAGE_INTERVAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mavlink_lora
{
template <class ContainerAllocator>
struct mavlink_lora_command_message_interval_
{
  typedef mavlink_lora_command_message_interval_<ContainerAllocator> Type;

  mavlink_lora_command_message_interval_()
    : message_id(0.0)
    , interval(0.0)  {
    }
  mavlink_lora_command_message_interval_(const ContainerAllocator& _alloc)
    : message_id(0.0)
    , interval(0.0)  {
  (void)_alloc;
    }



   typedef double _message_id_type;
  _message_id_type message_id;

   typedef double _interval_type;
  _interval_type interval;





  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> const> ConstPtr;

}; // struct mavlink_lora_command_message_interval_

typedef ::mavlink_lora::mavlink_lora_command_message_interval_<std::allocator<void> > mavlink_lora_command_message_interval;

typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_command_message_interval > mavlink_lora_command_message_intervalPtr;
typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_command_message_interval const> mavlink_lora_command_message_intervalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavlink_lora

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'mavlink_lora': ['/home/chris/school/ownProjects/gazebo_with_thor/Gazebo/catkin_ws/src/mavlink_lora/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55c9f15bed1a05ddbb00a99661cd4646";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55c9f15bed1a05ddULL;
  static const uint64_t static_value2 = 0xbb00a99661cd4646ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavlink_lora/mavlink_lora_command_message_interval";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 message_id\n"
"float64 interval\n"
;
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message_id);
      stream.next(m.interval);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mavlink_lora_command_message_interval_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavlink_lora::mavlink_lora_command_message_interval_<ContainerAllocator>& v)
  {
    s << indent << "message_id: ";
    Printer<double>::stream(s, indent + "  ", v.message_id);
    s << indent << "interval: ";
    Printer<double>::stream(s, indent + "  ", v.interval);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVLINK_LORA_MESSAGE_MAVLINK_LORA_COMMAND_MESSAGE_INTERVAL_H
