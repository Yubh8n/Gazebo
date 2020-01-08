// Generated by gencpp from file mavlink_lora/mavlink_lora_mission_ack.msg
// DO NOT EDIT!


#ifndef MAVLINK_LORA_MESSAGE_MAVLINK_LORA_MISSION_ACK_H
#define MAVLINK_LORA_MESSAGE_MAVLINK_LORA_MISSION_ACK_H


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
struct mavlink_lora_mission_ack_
{
  typedef mavlink_lora_mission_ack_<ContainerAllocator> Type;

  mavlink_lora_mission_ack_()
    : result(0)
    , result_text()  {
    }
  mavlink_lora_mission_ack_(const ContainerAllocator& _alloc)
    : result(0)
    , result_text(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _result_text_type;
  _result_text_type result_text;





  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> const> ConstPtr;

}; // struct mavlink_lora_mission_ack_

typedef ::mavlink_lora::mavlink_lora_mission_ack_<std::allocator<void> > mavlink_lora_mission_ack;

typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_mission_ack > mavlink_lora_mission_ackPtr;
typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_mission_ack const> mavlink_lora_mission_ackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavlink_lora

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'mavlink_lora': ['/home/chris/school/ownProjects/gazebo_with_thor/Gazebo/catkin_ws/src/mavlink_lora/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de4e86b4da773bde5bab269127c97c0f";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde4e86b4da773bdeULL;
  static const uint64_t static_value2 = 0x5bab269127c97c0fULL;
};

template<class ContainerAllocator>
struct DataType< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavlink_lora/mavlink_lora_mission_ack";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 result\n"
"string result_text\n"
;
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.result_text);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mavlink_lora_mission_ack_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavlink_lora::mavlink_lora_mission_ack_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "result_text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result_text);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVLINK_LORA_MESSAGE_MAVLINK_LORA_MISSION_ACK_H
